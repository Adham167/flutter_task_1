import 'package:flutter/material.dart';
import 'package:flutter_task_1/utils/app_style.dart';

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),

          const Text(
            "Classic Blue Suit",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.styleBold16,
          ),
          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Cotton 100%",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyle.styleGreyRegular10,
              ),

              Spacer(),
              const Icon(
                Icons.star_border_outlined,
                size: 14,
                color: Color(0xFFEAB308),
              ),
              Text(
                "4.5",
                style: AppStyle.styleRegular12.copyWith(
                  color: Color(0xFFEAB308),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),

          Row(
            children: [
              Text(
                "\$49999.99",
                style: AppStyle.styleRegular16,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  "\$60.0000",
                  style: AppStyle.styleGreyRegular16.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
