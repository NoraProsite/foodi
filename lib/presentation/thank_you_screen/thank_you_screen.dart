import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 34.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Thank You",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 30.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 66.h, vertical: 155.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgAddressDetails),
                              fit: BoxFit.cover)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 265.h,
                                child: Text(
                                    "Your order has been placed! You will\nrecieve an email receipt shortly.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles.bodyLarge16
                                        .copyWith(height: 1.75))),
                            SizedBox(height: 29.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgIconBlack900,
                                height: 112.adaptSize,
                                width: 112.adaptSize)
                          ])),
                  SizedBox(height: 65.v),
                  CustomElevatedButton(
                      text: "Back to Home",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowleftPrimarycontainer,
                              height: 24.adaptSize,
                              width: 24.adaptSize))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingCartPrimarycontainer,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
