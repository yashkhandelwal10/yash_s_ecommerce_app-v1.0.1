import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ManworkequipmentItemWidget extends StatelessWidget {
  const ManworkequipmentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgManWorkEquipment,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          "Office Bag",
          style: CustomTextStyles.labelMediumBluegray300,
        ),
      ],
    );
  }
}
