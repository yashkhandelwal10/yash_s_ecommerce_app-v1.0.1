import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 291.h,
        controller: controller,
        hintText: "Nike Air Max",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgClearIcon,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
      ),
    );
  }
}
