import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgProductDetails),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 2.v),
                    child: Column(children: [
                      _buildPizzaStack(context),
                      SizedBox(height: 36.v),
                      _buildDescriptionColumn(context),
                      SizedBox(height: 6.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
            margin: EdgeInsets.only(left: 32.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingCart,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildPizzaStack(BuildContext context) {
    return SizedBox(
        height: 365.v,
        width: 358.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage101x97,
              height: 331.v,
              width: 319.h,
              alignment: Alignment.topCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 322.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pizza",
                            style: CustomTextStyles
                                .displaySmallOnPrimaryContainer),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("7,90",
                                style: CustomTextStyles
                                    .headlineLargeGilroyBoldOnPrimaryContainer))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDescriptionColumn(BuildContext context) {
    return Container(
        width: 398.h,
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 30.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder16,
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgDescription),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.v),
              Text("Description", style: theme.textTheme.bodyLarge),
              SizedBox(height: 11.v),
              Container(
                  width: 329.h,
                  margin: EdgeInsets.only(right: 12.h),
                  child: Text(
                      "Velit officia consequat duis enim velit mollit exercitation \nveniam consequat sunt nostrud amet.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium13
                          .copyWith(height: 1.62))),
              SizedBox(height: 26.v),
              Text("Quantity", style: theme.textTheme.bodyLarge),
              SizedBox(height: 18.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: 130.h,
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder28),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMinus,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.symmetric(vertical: 16.v)),
                          CustomIconButton(
                              height: 56.v,
                              width: 42.h,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgPlusGray50001))
                        ])),
                Padding(
                    padding:
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 18.v),
                    child: Text("1", style: theme.textTheme.bodyLarge))
              ]),
              SizedBox(height: 40.v),
              Row(children: [
                CustomIconButton(
                    height: 72.adaptSize,
                    width: 72.adaptSize,
                    padding: EdgeInsets.all(24.h),
                    decoration: IconButtonStyleHelper.fillGrayTL36,
                    child: CustomImageView(imagePath: ImageConstant.imgHeart)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: CustomIconButton(
                        height: 72.adaptSize,
                        width: 72.adaptSize,
                        padding: EdgeInsets.all(24.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL36,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgShoppingBag)))
              ])
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
