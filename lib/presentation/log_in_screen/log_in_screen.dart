import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

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
                          "Log in",
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      SizedBox(height: 41.v),
                      CustomTextFormField(
                        controller: emailController,
                        hintText: "E-mail",
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 26.v, 12.h, 26.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockGray50001,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 68.v,
                        ),
                      ),
                      SizedBox(height: 24.v),
                      CustomTextFormField(
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
                      ),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                        text: "Login",
                      ),
                      SizedBox(height: 44.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "I don’t have account. ",
                                style: CustomTextStyles.bodyMediumffa8a8a8,
                              ),
                              TextSpan(
                                text: "Sign Up",
                                style: CustomTextStyles.bodyMediumff0b0b0b_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "You can access our different dishes.",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 36.v),
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
}
