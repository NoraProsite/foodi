import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PizzacomponentItemWidget extends StatelessWidget {
  const PizzacomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage101x97,
            height: 83.v,
            width: 79.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 6.v,
              bottom: 7.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              top: 8.v,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pizza",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Delicious food 2020",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 13.v),
                Text(
                  "59",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 56.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
