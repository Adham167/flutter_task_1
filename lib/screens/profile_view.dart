import 'package:flutter/material.dart';
import 'package:flutter_task_1/utils/app_colors.dart';
import 'package:flutter_task_1/utils/app_style.dart';
import 'package:flutter_task_1/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,

        backgroundColor: AppColors.backGroundColor,
        title: Text("Profile", style: AppStyle.styleSemiBold20),
        centerTitle: true,
      ),
      body: ProfileViewBody(),
    );
  }
}

