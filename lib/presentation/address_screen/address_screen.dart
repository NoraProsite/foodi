import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_checkbox_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_drop_down.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddressScreen extends StatelessWidget {
  AddressScreen({Key? key}) : super(key: key);

  TextEditingController addressvalueController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 34.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Address",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 30.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 33.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgAddressDetails),
                              fit: BoxFit.cover)),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 29.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Delivery",
                                    style: CustomTextStyles.bodyLarge16))),
                        SizedBox(height: 15.v),
                        CustomTextFormField(
                            controller: addressvalueController,
                            hintText: "1234 Kalibari Road",
                            hintStyle: CustomTextStyles.bodyMediumGray500,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 25.v)),
                        SizedBox(height: 27.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("City",
                                    style: CustomTextStyles.bodyLarge16))),
                        SizedBox(height: 15.v),
                        CustomDropDown(
                            icon: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 26.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowdown,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            hintText: "New York",
                            items: dropdownItemList,
                            contentPadding: EdgeInsets.only(
                                left: 24.h, top: 25.v, bottom: 25.v),
                            borderDecoration:
                                DropDownStyleHelper.fillOnPrimaryContainer,
                            fillColor: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            onChanged: (value) {}),
                        SizedBox(height: 25.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text("State",
                                          style: CustomTextStyles.bodyLarge16)),
                                  Text("Zip Code",
                                      style: CustomTextStyles.bodyLarge16)
                                ])),
                        SizedBox(height: 15.v),
                        _buildZipZipCodeForm(context),
                        SizedBox(height: 29.v),
                        _buildCheck(context)
                      ])),
                  SizedBox(height: 65.v),
                  CustomElevatedButton(
                      text: "Payment",
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
  Widget _buildZipZipCodeForm(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder36),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("NK", style: CustomTextStyles.bodyMediumGray500),
          CustomImageView(
              imagePath: ImageConstant.imgArrowdown,
              height: 14.adaptSize,
              width: 14.adaptSize,
              margin: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 2.v)),
          Spacer(),
          Text("300030", style: CustomTextStyles.bodyMediumGray500)
        ]));
  }

  /// Section Widget
  Widget _buildCheck(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 79.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "Billing address same as delivery",
                value: check,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                onChange: (value) {
                  check = value;
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
