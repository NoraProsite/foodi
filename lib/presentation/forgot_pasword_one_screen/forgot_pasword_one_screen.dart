import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class ForgotPaswordOneScreen extends StatelessWidget {
  ForgotPaswordOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneController = TextEditingController();

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
                        "Enter your phone",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 18.v),
                      CustomTextFormField(
                        controller: phoneController,
                        hintText: "Phone",
                        textInputAction: TextInputAction.done,
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
          ),
        ),
      ),
    );
  }
}
