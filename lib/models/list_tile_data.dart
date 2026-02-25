
import 'dart:ui';

class ListTileData {
  final String icon;
  final String title;
  final VoidCallback? onTap;

  ListTileData({required this.icon, required this.title, this.onTap});
}