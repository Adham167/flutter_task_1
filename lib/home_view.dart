import 'package:flutter/material.dart';
import 'package:flutter_task_1/home_view_body.dart';
import 'package:flutter_task_1/utils/app_colors.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        title: Text("Product", style: AppStyle.styleSemiBold20),
        centerTitle: true,
      ),
      body: HomeViewBody(),
    );
  }
}
