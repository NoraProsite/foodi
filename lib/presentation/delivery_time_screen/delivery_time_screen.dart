import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 648.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMapImage,
                            height: 648.v,
                            width: 414.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.only(top: 32.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildTopBar(context),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage263x414,
                                          height: 263.v,
                                          width: 414.h)
                                    ])))
                      ])),
                  SizedBox(height: 5.v),
                  _buildAddress(context)
                ])),
            bottomNavigationBar: _buildDeliveryMan(context)));
  }

  /// Section Widget
  Widget _buildTopBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.outlineGrayF,
              child: CustomImageView(imagePath: ImageConstant.imgDetails))
        ]));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(32.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(children: [
          CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.outlineOnErrorContainer,
              child: CustomImageView(
                  imagePath: ImageConstant.imgMapPinPrimarycontainer)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Address", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 7.v),
                    Text("241 Hillside Road, HASTINGS",
                        style: theme.textTheme.bodyLarge)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDeliveryMan(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 32.h, right: 169.h, bottom: 28.v),
        decoration: AppDecoration.fillPrimary,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage72x72,
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  radius: BorderRadius.circular(36.h)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 11.v, bottom: 13.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                            opacity: 0.64,
                            child: Text("Time to Destination",
                                style: CustomTextStyles.bodyMediumBlack900_3)),
                        Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text("25 minutes",
                                style: CustomTextStyles.titleLarge20))
                      ]))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
