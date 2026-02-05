import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_1/custom_search_field.dart';
import 'package:flutter_task_1/utils/app_images.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomSearchField(),
          SizedBox(height: 16),
          Divider(height: 0, color: Color(0xFFE5E5E5)),
          SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(AppImages.filterIcon1),
              SizedBox(width: 10),
              Text("Filter", style: AppStyle.styleMedium14),
              Spacer(),
              SvgPicture.asset(AppImages.filterIcon2),
            ],
          ),
          SizedBox(height: 8),
          FilterWidget(),
          SizedBox(height: 8),
          Divider(height: 0, color: Color(0xFFE5E5E5)),
          SizedBox(height: 8),
          ProductsWidget(),
        ],
      ),
    );
  }
}

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({super.key});

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: isSelected
                  ? Container(
                      height: 40,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Color(0xFF5D3A82),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Center(
                        child: SvgPicture.asset(AppImages.blackListIcon),
                      ),
                    )
                  : SvgPicture.asset(AppImages.productIcon),
            ),
            SizedBox(width: 8),
            GestureDetector(
              child: Container(
                height: 40,
                width: 42,
                decoration: BoxDecoration(
                  color: Color(0xFF5D3A82),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Center(child: SvgPicture.asset(AppImages.listIcon)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<String> filterList = ['All', 'Women', 'Men', 'Kids', 'Accessories'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? Color(0xFF5D3A82)
                  : Color(0xFFF9FAFA),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Center(
                child: Text(
                  filterList[index],
                  style: selectedIndex == index
                      ? AppStyle.styleMedium14.copyWith(
                          color: Color(0xFFFFFFFF),
                        )
                      : AppStyle.styleMedium14,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: filterList.length,
      ),
    );
  }
}
