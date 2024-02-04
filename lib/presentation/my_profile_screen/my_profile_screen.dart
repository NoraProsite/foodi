import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameValueSectionController = TextEditingController();

  TextEditingController phoneNumberValueSectionController =
      TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController addressValueSectionController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 8.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 8.h,
                        bottom: 8.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 30.v,
                      ),
                      decoration: AppDecoration.fillGray50.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlusPrimarycontainer,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 76.v),
                          _buildMyProfileSection(context),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text(
                                "My Name",
                                style: CustomTextStyles.bodyLargeGray50002,
                              ),
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildNameValueSection(context),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text(
                                "Phone Number",
                                style: CustomTextStyles.bodyLargeGray50002,
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildPhoneNumberValueSection(context),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text(
                                "Email",
                                style: CustomTextStyles.bodyLargeGray50002,
                              ),
                            ),
                          ),
                          SizedBox(height: 14.v),
                          _buildEmailSection(context),
                          SizedBox(height: 26.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text(
                                "Address",
                                style: CustomTextStyles.bodyLargeGray50002,
                              ),
                            ),
                          ),
                          SizedBox(height: 13.v),
                          _buildAddressValueSection(context),
                          SizedBox(height: 56.v),
                          _buildSaveButtonSection(context),
                          SizedBox(height: 36.v),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyProfileSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              bottom: 32.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Profile",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 8.v),
                Text(
                  "Profile Details",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 112.v,
            width: 126.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage112x112,
                  height: 112.adaptSize,
                  width: 112.adaptSize,
                  radius: BorderRadius.circular(
                    56.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 21.v),
                  child: CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: IconButtonStyleHelper.outlineGrayA,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusGray700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameValueSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomTextFormField(
        controller: nameValueSectionController,
        hintText: "Abdullah",
        suffix: Container(
          padding: EdgeInsets.all(14.h),
          margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              22.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.gray9000a,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  12,
                ),
              ),
            ],
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit2,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 72.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 24.h,
          top: 25.v,
          bottom: 25.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainerTL16,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberValueSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomTextFormField(
        controller: phoneNumberValueSectionController,
        hintText: "+880 2590 5000",
        suffix: Container(
          padding: EdgeInsets.all(14.h),
          margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              22.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.gray9000a,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  12,
                ),
              ),
            ],
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit2,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 72.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 24.h,
          top: 25.v,
          bottom: 25.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainerTL16,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomTextFormField(
        controller: emailSectionController,
        hintText: "abdullah@gmail.com",
        textInputType: TextInputType.emailAddress,
        suffix: Container(
          padding: EdgeInsets.all(14.h),
          margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              22.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.gray9000a,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  12,
                ),
              ),
            ],
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit2,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 72.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 24.h,
          top: 25.v,
          bottom: 25.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainerTL16,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressValueSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: CustomTextFormField(
        controller: addressValueSectionController,
        hintText: "9 West 46th Street...",
        textInputAction: TextInputAction.done,
        suffix: Container(
          padding: EdgeInsets.all(14.h),
          margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(
              22.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.gray9000a,
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  12,
                ),
              ),
            ],
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit2,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 72.v,
        ),
        contentPadding: EdgeInsets.only(
          left: 24.h,
          top: 25.v,
          bottom: 25.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainerTL16,
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButtonSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
    );
  }
}
