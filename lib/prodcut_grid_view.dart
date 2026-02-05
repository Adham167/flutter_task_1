
import 'package:flutter/material.dart';
import 'package:flutter_task_1/product_card.dart';

class ProdcutGridView extends StatelessWidget {
  const ProdcutGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 16,
        childAspectRatio: 0.71,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProductCard(),
        childCount: 10,
      ),
    );
  }
}