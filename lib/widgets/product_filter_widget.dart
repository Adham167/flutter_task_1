
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_1/widgets/filter_widget.dart';
import 'package:flutter_task_1/widgets/product_button.dart';
import 'package:flutter_task_1/utils/app_images.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class ProductFilterWidget extends StatelessWidget {
  const ProductFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(height: 8),
          Row(
            children: [
              SvgPicture.asset(AppImages.filterIcon1),
              SizedBox(width: 10),
              Text("Filter", style: AppStyle.styleMedium14),
              Spacer(),
              GestureDetector(
                onTap: () {
                  
                },
                child: SvgPicture.asset(AppImages.filterIcon2)),
            ],
          ),
          SizedBox(height: 8),
          FilterWidget(),
          SizedBox(height: 8),
          Divider(height: 0, color: Color(0xFFE5E5E5)),
          SizedBox(height: 8),
          ProductButton(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
