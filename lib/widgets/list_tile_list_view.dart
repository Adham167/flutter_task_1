import 'package:flutter/material.dart';
import 'package:flutter_task_1/models/list_tile_data.dart';
import 'package:flutter_task_1/utils/app_images.dart';
import 'package:flutter_task_1/widgets/list_tile_item.dart';

class ListTileListView extends StatelessWidget {
  const ListTileListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) {
        final items = [
          ListTileData(
            icon: AppImages.groupIcon,
            title: "Edit Profile",
            onTap: () {
              // Handle Edit Profile tap
            },
          ),
          ListTileData(
            icon: AppImages.keyIcon,
            title: "Change Password",
            onTap: () {
              // Handle Change Password tap
            },
          ),
          ListTileData(
            icon: AppImages.ordersIcon,
            title: "My Orders",
            onTap: () {
              // Handle My Orders tap
            },
          ),
          ListTileData(
            icon: AppImages.returnsIcon,
            title: "My Returns",
            onTap: () {
              // Handle My Returns tap
            },
          ),
          ListTileData(
            icon: AppImages.wishlistIcon,
            title: "Wishlist",
            onTap: () {
              // Handle Wishlist tap
            },
          ),
          ListTileData(
            icon: AppImages.notificationIcon,
            title: "Notifications",
            onTap: () {
              // Handle Notifications tap
            },
          ),
          ListTileData(
            icon: AppImages.savedAddressIcon,
            title: "Saved Addresses",
            onTap: () {
              // Handle Saved Addresses tap
            },
          ),
          ListTileData(
            icon: AppImages.helpIcon,
            title: "Helps & Support",
            onTap: () {
              // Handle Helps & Support tap
            },
          ),
        ];
    
        final isFirst = index == 0;
        final isLast = index == 7;
        final isMiddle = !isFirst && !isLast;
    
        // Determine border radius based on position
        BorderRadiusGeometry borderRadius;
        if (isFirst) {
          borderRadius = BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          );
        } else if (isLast) {
          borderRadius = BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          );
        } else {
          borderRadius = BorderRadius.zero;
        }
    
        return Padding(
          padding: EdgeInsets.only(top: isFirst ? 0 : 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              border: Border.all(
                color: Color(0xFFE5E5E5),
                width: isMiddle ? 0.5 : 1,
              ),
            ),
            child: ListTileItem(
              icon: items[index].icon,
              title: items[index].title,
              onTap: items[index].onTap,
            ),
          ),
        );
      },
    );
  }
}
