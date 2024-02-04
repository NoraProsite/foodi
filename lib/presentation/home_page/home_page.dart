import '../home_page/widgets/homelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Delicious ",
                        style: CustomTextStyles.headlineLargeff0b0b0b,
                      ),
                      TextSpan(
                        text: "Food",
                        style: CustomTextStyles.headlineLargeGilroyff0b0b0b,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 24.v),
              _buildHomeList(context),
              SizedBox(height: 45.v),
              _buildHomeRow(context),
              SizedBox(height: 24.v),
              _buildFoodCardRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBergerMenu,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 20.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 80.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 32.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 12.h,
            );
          },
          itemCount: 5,
          itemBuilder: (context, index) {
            return HomelistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 133.adaptSize,
                    width: 133.adaptSize,
                  ),
                  Text(
                    "Chicken Pop",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Best beef burger for you",
                    style: CustomTextStyles.bodySmallBluegray400,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "39",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 14.v),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 21.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage101x97,
                    height: 101.v,
                    width: 97.h,
                  ),
                  SizedBox(height: 17.v),
                  Text(
                    "Whiskey Pizza",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "Best beef burger for you",
                    style: CustomTextStyles.bodySmallBluegray400,
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "59",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodCardRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25.h,
        right: 39.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 46.v,
              bottom: 46.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yummy Bread",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Best rice rolls for you",
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
                SizedBox(height: 12.v),
                Text(
                  "29",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage169x169,
            height: 169.adaptSize,
            width: 169.adaptSize,
            margin: EdgeInsets.only(
              left: 37.h,
              top: 1.v,
            ),
          ),
        ],
      ),
    );
  }
}
