import '../cart_style_two_screen/widgets/foodcardlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';

class CartStyleTwoScreen extends StatelessWidget {
  const CartStyleTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 33.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("Cart",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 31.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 32.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgCartProduct),
                              fit: BoxFit.cover)),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 27.v),
                        _buildFoodCardList(context),
                        SizedBox(height: 24.v),
                        _buildTotalPrice(context)
                      ])),
                  Spacer(),
                  SizedBox(height: 30.v),
                  CustomElevatedButton(
                      text: "Address",
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgChevronleft,
                              height: 24.adaptSize,
                              width: 24.adaptSize)))
                ]))));
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
              imagePath: ImageConstant.imgShoppingCartPrimarycontainer,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildFoodCardList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return FoodcardlistItemWidget();
        });
  }

  /// Section Widget
  Widget _buildTotalPrice(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v, bottom: 6.v),
                  child:
                      Text("Total", style: CustomTextStyles.titleLargeGray500)),
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text("129", style: theme.textTheme.headlineSmall))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
