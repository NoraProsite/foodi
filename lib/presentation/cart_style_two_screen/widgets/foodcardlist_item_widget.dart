import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class FoodcardlistItemWidget extends StatelessWidget {
  const FoodcardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage298x350,
            height: 66.v,
            width: 75.h,
            margin: EdgeInsets.symmetric(vertical: 12.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Burger",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Yummy Burger with cheese ",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 10.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomOutlinedButton(
                      width: 53.h,
                      text: "2",
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 27.h,
                        top: 5.v,
                        bottom: 8.v,
                      ),
                      child: Text(
                        "80",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
