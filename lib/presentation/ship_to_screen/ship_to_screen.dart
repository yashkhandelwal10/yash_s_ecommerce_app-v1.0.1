import '../ship_to_screen/widgets/shiptolist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yash_s_ecommerce_app/widgets/custom_elevated_button.dart';

class ShipToScreen extends StatelessWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(children: [
                  SizedBox(height: 4.v),
                  _buildShipToList(context)
                ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Ship To", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlusIcon,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildShipToList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ShiptolistItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
