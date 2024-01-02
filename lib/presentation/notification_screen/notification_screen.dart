import 'package:flutter/material.dart';
import 'package:yash_s_ecommerce_app/core/app_export.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yash_s_ecommerce_app/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  _buildNotificationOptionFeed(context,
                      listIconImage: ImageConstant.imgOffer,
                      feedText: "Offer", onTapNotificationOptionFeed: () {
                    onTapNotificationOption(context);
                  }),
                  _buildNotificationOptionFeed(context,
                      listIconImage: ImageConstant.imgListIcon,
                      feedText: "Feed"),
                  SizedBox(height: 5.v),
                  _buildNotificationOptionFeed(context,
                      listIconImage: ImageConstant.imgNotificationIconPrimary,
                      feedText: "Acivity", onTapNotificationOptionFeed: () {
                    onTapNotificationOption1(context);
                  })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "Notification", margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildNotificationOptionFeed(
    BuildContext context, {
    required String listIconImage,
    required String feedText,
    Function? onTapNotificationOptionFeed,
  }) {
    return GestureDetector(
        onTap: () {
          onTapNotificationOptionFeed!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: listIconImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
                  child: Text(feedText,
                      style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the notificationOfferScreen when the action is triggered.
  onTapNotificationOption(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOfferScreen);
  }

  /// Navigates to the notificationActivityScreen when the action is triggered.
  onTapNotificationOption1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationActivityScreen);
  }
}
