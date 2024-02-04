import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FramTwoDialog extends StatelessWidget {
  const FramTwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.h,
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 39.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 35.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroupPrimary,
            height: 120.adaptSize,
            width: 120.adaptSize,
          ),
          SizedBox(height: 62.v),
          Text(
            "Delivery is given on time",
            style: CustomTextStyles.titleLarge20,
          ),
          SizedBox(height: 21.v),
          SizedBox(
            width: 265.h,
            child: Text(
              "Your order has been placed! You will\nrecieve an email receipt shortly.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeGray500.copyWith(
                height: 1.75,
              ),
            ),
          ),
          SizedBox(height: 54.v),
          Text(
            "Skip",
            style: CustomTextStyles.bodyLarge16,
          ),
        ],
      ),
    );
  }
}
