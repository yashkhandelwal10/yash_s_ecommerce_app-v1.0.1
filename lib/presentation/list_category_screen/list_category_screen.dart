import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/custom_app_bar.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgArrowLeftPrimary,
                              bikini: "Shirt", onTapBikiniIcon: () {
                            onTapArrowLeft1(context);
                          }),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgBikiniIcon,
                              bikini: "Bikini"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgClock,
                              bikini: "Dress"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgManWorkEquipment,
                              bikini: "Work Equipment"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgTrash,
                              bikini: "Man Pants"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgTicket,
                              bikini: "Man Shoes"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgForward,
                              bikini: "Man Underwear"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgAirplane,
                              bikini: "Man T-Shirt"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgTrashPrimary,
                              bikini: "Woman Bag"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgWomanPantsIcon,
                              bikini: "Woman Pants"),
                          _buildCategoryOptionBikini(context,
                              userImage: ImageConstant.imgWomanShoesIcon,
                              bikini: "High Heels")
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Category", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildCategoryOptionBikini(
    BuildContext context, {
    required String userImage,
    required String bikini,
    Function? onTapBikiniIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: userImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapBikiniIcon!.call();
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text(bikini,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }
}
