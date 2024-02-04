import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage894x414,
                      height: 894.v,
                      width: 414.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 32.v),
                            _buildAppBar(context),
                            SizedBox(height: 8.v),
                            _buildTwoStack(context),
                            SizedBox(height: 33.v),
                            _buildDetailsColumn(context)
                          ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 32.v,
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 32.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingCart,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildTwoStack(BuildContext context) {
    return SizedBox(
        height: 375.v,
        width: 364.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage101x97,
              height: 375.v,
              width: 361.h,
              alignment: Alignment.center),
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
                            decoration: IconButtonStyleHelper.fillGrayTL24,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgPlus))),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(16.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL24,
                            alignment: Alignment.bottomLeft,
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgPlusPrimarycontainer)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildDetailsColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder16,
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgDescription),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 46.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pizza bhai", style: theme.textTheme.displaySmall),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("7,90",
                                style: CustomTextStyles
                                    .headlineLargeGilroyRegular))
                      ])),
              SizedBox(height: 55.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text("Description", style: theme.textTheme.bodyLarge)),
              SizedBox(height: 15.v),
              Container(
                  width: 329.h,
                  margin: EdgeInsets.only(left: 12.h, right: 24.h),
                  child: Text(
                      "Velit officia consequat duis enim velit mollit exercitation \nveniam consequat sunt nostrud amet.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium13
                          .copyWith(height: 1.62))),
              SizedBox(height: 42.v),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(children: [
                    CustomIconButton(
                        height: 72.adaptSize,
                        width: 72.adaptSize,
                        padding: EdgeInsets.all(24.h),
                        decoration: IconButtonStyleHelper.fillGrayTL36,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgHeart)),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: CustomIconButton(
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            padding: EdgeInsets.all(24.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL36,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgShoppingBag)))
                  ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
