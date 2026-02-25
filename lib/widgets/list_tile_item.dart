
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class ListTileItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const ListTileItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFE5E5E5),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
          height: 20,
          width: 20,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(title, style: AppStyle.styleMedium14),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Color(0xFF666666),
      ),
    );
  }
}
