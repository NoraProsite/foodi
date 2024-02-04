import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/presentation/home_page/home_page.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 716.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 22.v),
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 26.h, right: 31.h, bottom: 5.v),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("Categories",
                                        style: theme.textTheme.displaySmall)),
                                SizedBox(height: 32.v),
                                _buildFoodCard1(context),
                                SizedBox(height: 24.v),
                                _buildFoodCard2(context),
                                Spacer(),
                                _buildFoodCard4(context)
                              ]))),
                  _buildFoodCard3(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildFoodCard1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage101x97,
              height: 83.v,
              width: 79.h,
              margin: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 7.v)),
          Padding(
              padding: EdgeInsets.only(left: 29.h, top: 8.v, bottom: 11.v),
              child: _buildVeganSalad(context,
                  foodFlatLayText: "Pizza",
                  deliciousFoodText: "Delicious food 2020",
                  priceText: "59")),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 56.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildFoodCard2(BuildContext context) {
    return SizedBox(
        height: 128.v,
        width: 355.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: _buildThirtyOne(context,
                  foodFlatLayText: "Vegan salad",
                  deliciousFoodText: "Delicious food 2020",
                  priceText: "39")),
          CustomImageView(
              imagePath: ImageConstant.imgImage77x116,
              height: 77.v,
              width: 116.h,
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Section Widget
  Widget _buildFoodCard4(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage298x350,
              height: 60.v,
              width: 71.h,
              margin: EdgeInsets.only(left: 7.h, top: 18.v, bottom: 18.v)),
          Spacer(flex: 37),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: _buildVeganSalad(context,
                  foodFlatLayText: "Burger",
                  deliciousFoodText: "Delicious food 2020",
                  priceText: "29")),
          Spacer(flex: 62),
          Padding(
              padding: EdgeInsets.only(top: 56.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  /// Section Widget
  Widget _buildFoodCard3(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
            height: 128.v,
            width: 381.h,
            margin: EdgeInsets.only(bottom: 163.v),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Padding(
                  padding: EdgeInsets.only(left: 31.h),
                  child: _buildThirtyOne(context,
                      foodFlatLayText: "Food flat lay",
                      deliciousFoodText: "Delicious food 2020",
                      priceText: "23")),
              CustomImageView(
                  imagePath: ImageConstant.imgImage116x175,
                  height: 116.v,
                  width: 175.h,
                  alignment: Alignment.centerLeft)
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildVeganSalad(
    BuildContext context, {
    required String foodFlatLayText,
    required String deliciousFoodText,
    required String priceText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(foodFlatLayText,
          style:
              CustomTextStyles.bodyLarge16.copyWith(color: appTheme.black900)),
      SizedBox(height: 4.v),
      Text(deliciousFoodText,
          style:
              theme.textTheme.bodySmall!.copyWith(color: appTheme.gray50002)),
      SizedBox(height: 13.v),
      Text(priceText,
          style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String foodFlatLayText,
    required String deliciousFoodText,
    required String priceText,
  }) {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foodFlatLayText,
                        style: CustomTextStyles.bodyLarge16
                            .copyWith(color: appTheme.black900)),
                    SizedBox(height: 4.v),
                    Text(deliciousFoodText,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: appTheme.gray50002)),
                    SizedBox(height: 13.v),
                    Text(priceText,
                        style: theme.textTheme.bodyLarge!
                            .copyWith(color: appTheme.black900))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 57.h, top: 56.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Searchgray50001:
        return AppRoutes.homePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Star:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
