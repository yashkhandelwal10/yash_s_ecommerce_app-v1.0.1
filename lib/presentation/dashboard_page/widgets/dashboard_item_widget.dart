import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  const DashboardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBlue50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageProduct,
            height: 133.adaptSize,
            width: 133.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 107.h,
            child: Text(
              "Nike Air Max 270 React ENG",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 4,
          ),
          SizedBox(height: 18.v),
          Text(
            "299,43",
            style: CustomTextStyles.labelLargePrimary,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Text(
                "534,33",
                style: CustomTextStyles.bodySmall10.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "24% Off",
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
