
import 'package:flutter/material.dart';
import 'package:flutter_task_1/utils/app_images.dart';
import 'package:flutter_task_1/utils/app_style.dart';
import 'package:flutter_task_1/widgets/custom_social_icon_button.dart';

class ConnectWithUsWidget extends StatelessWidget {
  const ConnectWithUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFFFFFF),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Connect With Us",
              style: AppStyle.styleBold16.copyWith(color: Color(0xFF1A1515)),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomSocialIconButton(iconAsset: AppImages.gmailIcon),
                CustomSocialIconButton(iconAsset: AppImages.instagramIcon),
                CustomSocialIconButton(iconAsset: AppImages.facebookIcon),
                CustomSocialIconButton(iconAsset: AppImages.linkedInIcon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
