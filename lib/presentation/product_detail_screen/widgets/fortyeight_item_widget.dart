import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';

// ignore: must_be_immutable
class FortyeightItemWidget extends StatelessWidget {
  const FortyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductImage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
