import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(8.h),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 60.v,
                  ),
                  decoration: AppDecoration.fillGray50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 63.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sign up",
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      SizedBox(height: 42.v),
                      _buildUserName(context),
                      SizedBox(height: 24.v),
                      _buildEmail(context),
                      SizedBox(height: 24.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 24.v),
                      _buildPassword(context),
                      SizedBox(height: 32.v),
                      _buildSignUpButton(context),
                      SizedBox(height: 44.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "I don’t have account. ",
                                  style: CustomTextStyles.bodyMediumffa8a8a8,
                                ),
                                TextSpan(
                                  text: "Log in",
                                  style: CustomTextStyles.bodyMediumff0b0b0b_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 68.adaptSize,
                            width: 68.adaptSize,
                            padding: EdgeInsets.all(22.h),
                            decoration: IconButtonStyleHelper.fillIndigo,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: CustomIconButton(
                              height: 68.adaptSize,
                              width: 68.adaptSize,
                              padding: EdgeInsets.all(25.h),
                              decoration: IconButtonStyleHelper.fillRedA,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGoogle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "User Name",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 26.v, 12.h, 26.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 68.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "E-mail",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 25.v, 12.h, 27.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockGray50001,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 68.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Phone Number",
      textInputType: TextInputType.phone,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 26.v, 12.h, 26.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgPhoneGray50001,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 68.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 26.v, 12.h, 26.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockGray5000116x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 68.v,
      ),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      margin: EdgeInsets.symmetric(horizontal: 6.h),
    );
  }
}
