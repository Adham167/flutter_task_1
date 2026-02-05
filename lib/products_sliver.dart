import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task_1/cubit/product_or_list_cubit.dart';
import 'package:flutter_task_1/product_card.dart';
import 'package:flutter_task_1/product_of_list_card.dart';

class ProductsSliver extends StatelessWidget {
  const ProductsSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductOrListCubit, ProductOrListState>(
      builder: (context, state) {
        if (state is ProductOrListProduct) {
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 16,
              childAspectRatio: 0.71,
            ),
            delegate: SliverChildBuilderDelegate(
              (_, __) => const ProductCard(),
              childCount: 10,
            ),
          );
        } else if (state is ProductOrList) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ProductOfListCard(),
              );
            }, childCount: 10),
          );
        }
        return const SliverToBoxAdapter(child: SizedBox());
      },
    );
  }
}
