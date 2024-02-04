import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class FoodDetailsOneScreen extends StatelessWidget {
  const FoodDetailsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 36.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Beef ",
                                style: CustomTextStyles.displaySmallff0b0b0b),
                            TextSpan(
                                text: "Burgers",
                                style:
                                    CustomTextStyles.displaySmallGilroyff0b0b0b)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 6.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Our very own! Smashed beef burgers",
                          style: CustomTextStyles
                              .bodyLargeGilroyRegularBluegray40001)),
                  SizedBox(height: 48.v),
                  _buildFoodDetailsOneStack(context),
                  SizedBox(height: 53.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 17.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      Text("S",
                                          style: CustomTextStyles
                                              .headlineSmallGray50003)
                                    ])),
                            Container(
                                margin: EdgeInsets.only(left: 16.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 17.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      Text("M",
                                          style: CustomTextStyles
                                              .headlineSmallGray50003)
                                    ])),
                            Container(
                                margin: EdgeInsets.only(left: 16.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32.h, vertical: 17.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      Text("L",
                                          style: CustomTextStyles
                                              .headlineSmallGray50003)
                                    ]))
                          ])),
                  SizedBox(height: 80.v),
                  _buildFoodDetailsOneRow(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgDetails,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFoodDetailsOneStack(BuildContext context) {
    return SizedBox(
        height: 343.v,
        width: 350.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage298x350,
              height: 298.v,
              width: 350.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 112.v,
                  width: 110.h,
                  decoration: AppDecoration.outlineBlackE,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 43.h, vertical: 16.v),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder44),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 6.v),
                                  Text("2",
                                      style: theme.textTheme.displayMedium)
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(16.h),
                            decoration:
                                IconButtonStyleHelper.outlineOnPrimaryContainer,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPlus))),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(16.h),
                            decoration:
                                IconButtonStyleHelper.outlineOnPrimaryContainer,
                            alignment: Alignment.bottomLeft,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPlusGray50002)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFoodDetailsOneRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Price", style: CustomTextStyles.bodyLargeGray50002),
        SizedBox(height: 10.v),
        Text("99", style: CustomTextStyles.displayMediumGilroyRegular)
      ]),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: CustomIconButton(
              height: 72.adaptSize,
              width: 72.adaptSize,
              padding: EdgeInsets.all(24.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(imagePath: ImageConstant.imgHeart))),
      Padding(
          padding: EdgeInsets.only(left: 12.h, bottom: 3.v),
          child: CustomIconButton(
              height: 72.adaptSize,
              width: 72.adaptSize,
              padding: EdgeInsets.all(24.h),
              decoration: IconButtonStyleHelper.outlineSecondaryContainer,
              child: CustomImageView(imagePath: ImageConstant.imgShoppingBag)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
