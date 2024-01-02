import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  const ProductsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgProductPicture02,
        height: 72.adaptSize,
        width: 72.adaptSize,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
