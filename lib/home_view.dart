import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task_1/cubit/product_or_list_cubit.dart';
import 'package:flutter_task_1/home_view_body.dart';
import 'package:flutter_task_1/utils/app_colors.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductOrListCubit()..changeUi(true),
      child: Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backGroundColor,
          title: Text("Product", style: AppStyle.styleSemiBold20),
          centerTitle: true,
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
