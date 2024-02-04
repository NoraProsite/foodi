import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class ForgotPaswordTwoScreen extends StatelessWidget {
  ForgotPaswordTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.h),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 123.v,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot Pasword",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 45.v),
                Text(
                  "An OTP code sent to your phone Enter it here.",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 19.v),
                CustomTextFormField(
                  controller: phoneController,
                  hintText: "Enter OPT Code",
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 24.v,
                  ),
                ),
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  text: "Next",
                ),
                SizedBox(height: 32.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
