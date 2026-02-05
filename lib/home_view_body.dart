import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task_1/cubit/product_or_list_cubit.dart';
import 'package:flutter_task_1/custom_search_field.dart';
import 'package:flutter_task_1/product_card.dart';
import 'package:flutter_task_1/product_filter_widget.dart';
import 'package:flutter_task_1/products_sliver.dart';
import 'package:flutter_task_1/utils/app_colors.dart';
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
          Expanded(
            child: CustomScrollView(
              slivers: [ProductFilterWidget(), ProductsSliver()],
            ),
          ),
        ],
      ),
    );
  }
}


class ProductListview extends StatelessWidget {
  const ProductListview({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductCard(),
        separatorBuilder: (context, index) => const SizedBox(width: 22),
        itemCount: 10,
      ),
    );
  }
}

