import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddYourCardScreen extends StatelessWidget {
  AddYourCardScreen({Key? key}) : super(key: key);

  TextEditingController cardHolderNameController = TextEditingController();

  TextEditingController cardNumberFormController = TextEditingController();

  TextEditingController mmyyValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 32.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Add Your ",
                                              style: CustomTextStyles
                                                  .displaySmallff0b0b0b),
                                          TextSpan(
                                              text: "Card",
                                              style: CustomTextStyles
                                                  .displaySmallGilroyff0b0b0b)
                                        ]),
                                        textAlign: TextAlign.left)),
                                SizedBox(height: 36.v),
                                _buildMasterCard(context),
                                SizedBox(height: 41.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("Card Holder Name",
                                            style:
                                                CustomTextStyles.bodyLarge16))),
                                SizedBox(height: 17.v),
                                _buildCardHolderName(context),
                                SizedBox(height: 25.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("Card Number",
                                            style:
                                                CustomTextStyles.bodyLarge16))),
                                SizedBox(height: 17.v),
                                _buildCardNumberForm(context),
                                SizedBox(height: 25.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("MM/YY",
                                              style:
                                                  CustomTextStyles.bodyLarge16),
                                          Text("CVC",
                                              style:
                                                  CustomTextStyles.bodyLarge16)
                                        ])),
                                SizedBox(height: 17.v),
                                _buildMmyyValue1(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildSave(context)));
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
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildMasterCard(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            height: 230.v,
            width: 350.h,
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Stack(alignment: Alignment.topLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgShape,
                  height: 230.v,
                  width: 227.h,
                  alignment: Alignment.centerRight),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, top: 8.v),
                      child: Row(children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgMastercardPng8,
                                  height: 53.v,
                                  width: 74.h),
                              SizedBox(height: 17.v),
                              Opacity(
                                  opacity: 0.9,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("Card Number".toUpperCase(),
                                          style: CustomTextStyles
                                              .bodyLargeGilroyBoldOnPrimaryContainer))),
                              SizedBox(height: 8.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "3000     4000     5000     "
                                                .toUpperCase(),
                                            style: CustomTextStyles
                                                .bodyMediumffffffff),
                                        TextSpan(
                                            text: "6080".toUpperCase(),
                                            style: CustomTextStyles
                                                .bodyMediumff0b0b0b)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 33.v),
                              Opacity(
                                  opacity: 0.9,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("VALID THRD".toUpperCase(),
                                          style: CustomTextStyles
                                              .bodyLargeGilroyBoldOnPrimaryContainer))),
                              SizedBox(height: 8.v),
                              Opacity(
                                  opacity: 0.72,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("09/21".toUpperCase(),
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimaryContainer)))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(left: 56.h, top: 148.v),
                            child: Column(children: [
                              Opacity(
                                  opacity: 0.9,
                                  child: Text("CVV".toUpperCase(),
                                      style: CustomTextStyles
                                          .bodyLargeGilroyBoldBlack900)),
                              SizedBox(height: 8.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Opacity(
                                      opacity: 0.72,
                                      child: Text("344".toUpperCase(),
                                          style: CustomTextStyles
                                              .bodyMediumBlack900_2)))
                            ]))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildCardHolderName(BuildContext context) {
    return CustomTextFormField(
        controller: cardHolderNameController,
        hintText: "Abdullah sajol",
        hintStyle: CustomTextStyles.bodyMediumBlack900_1,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50);
  }

  /// Section Widget
  Widget _buildCardNumberForm(BuildContext context) {
    return CustomTextFormField(
        controller: cardNumberFormController,
        hintText: "3000 4000 5000 6080",
        hintStyle: CustomTextStyles.bodyMediumBlack900_1,
        contentPadding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50);
  }

  /// Section Widget
  Widget _buildMmyyValue(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: CustomTextFormField(
                controller: mmyyValueController,
                hintText: "MM/YY",
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray50)));
  }

  /// Section Widget
  Widget _buildMmyyValue1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildMmyyValue(context),
      Container(
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.all(24.h),
          decoration: AppDecoration.fillGray50
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
          child: Text("CVC", style: theme.textTheme.bodyMedium))
    ]);
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        text: "Save",
        margin: EdgeInsets.only(left: 38.h, right: 38.h, bottom: 40.v));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
