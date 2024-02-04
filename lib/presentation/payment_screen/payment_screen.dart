import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  TextEditingController zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 37.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Payment",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 27.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 32.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgAddressDetails),
                              fit: BoxFit.cover)),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 28.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Card number",
                                    style: CustomTextStyles.bodyLarge16))),
                        SizedBox(height: 17.v),
                        CustomTextFormField(
                            controller: zipcodeController,
                            hintText: "5000",
                            hintStyle: CustomTextStyles.bodyMediumGray500,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(24.h, 24.v, 30.h, 23.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .img1200pxmastercard2019logo1,
                                    height: 21.v,
                                    width: 34.h)),
                            prefixConstraints: BoxConstraints(maxHeight: 68.v)),
                        SizedBox(height: 25.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Expiration",
                                          style: CustomTextStyles.bodyLarge16)),
                                  Text("Secure Code",
                                      style: CustomTextStyles.bodyLarge16)
                                ])),
                        SizedBox(height: 15.v),
                        _buildExpirationForm(context),
                        SizedBox(height: 24.v),
                        _buildDetails(context)
                      ])),
                  SizedBox(height: 65.v),
                  CustomElevatedButton(
                      text: "Place Order",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgChevronleft,
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

  /// Section Widget
  Widget _buildExpirationForm(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("MM/YY", style: CustomTextStyles.bodyMediumGray500),
          Text("01/20", style: CustomTextStyles.bodyMediumGray500)
        ]));
  }

  /// Section Widget
  Widget _buildDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildTaxes(context, taxText: "Subtotal", freeText: "129.00"),
          SizedBox(height: 15.v),
          _buildTaxes(context, taxText: "Taxes", freeText: "Free"),
          SizedBox(height: 28.v),
          _buildTaxes(context, taxText: "Total", freeText: "129")
        ]));
  }

  /// Common widget
  Widget _buildTaxes(
    BuildContext context, {
    required String taxText,
    required String freeText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(taxText,
          style: CustomTextStyles.bodyLargeGray500
              .copyWith(color: appTheme.gray500)),
      Text(freeText,
          style: CustomTextStyles.bodyLargeGray500
              .copyWith(color: appTheme.gray500))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
