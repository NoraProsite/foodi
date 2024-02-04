import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  const HomelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgCake,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ),
    );
  }
}
