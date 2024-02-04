import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_text_form_field.dart';

class CahangePasswordScreen extends StatelessWidget {
  CahangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController oldPasswordFormController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

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
                        "Cahange Password",
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 44.v),
                      Text(
                        "Enter Old Pasword",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 28.v),
                      CustomTextFormField(
                        controller: oldPasswordFormController,
                        obscureText: true,
                      ),
                      SizedBox(height: 42.v),
                      Text(
                        "Enter New Pasword",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 28.v),
                      CustomTextFormField(
                        controller: newpasswordController,
                        hintText: "Enter New Password",
                        hintStyle: CustomTextStyles.bodyLargeGray50002_1,
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
                        text: "Save",
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
