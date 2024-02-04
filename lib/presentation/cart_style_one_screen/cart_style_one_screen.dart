import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class CartStyleOneScreen extends StatelessWidget {
  const CartStyleOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: SizeUtils.height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 1.h,
            vertical: 8.v,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 7.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 32.v,
                  ),
                  decoration: AppDecoration.fillGray50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTopBar(context),
                      SizedBox(height: 37.v),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          "Cart",
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      SizedBox(height: 36.v),
                      _buildCard1(context),
                      SizedBox(height: 24.v),
                      _buildCard2(context),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        child: _buildTotal(
                          context,
                          totalText: "Discount Code",
                          priceText: "Enter or choose a code",
                        ),
                      ),
                      SizedBox(height: 28.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        child: _buildTotal(
                          context,
                          totalText: "Total",
                          priceText: "129",
                        ),
                      ),
                      SizedBox(height: 31.v),
                      CustomElevatedButton(
                        text: "Checkout",
                        margin: EdgeInsets.symmetric(horizontal: 5.h),
                      ),
                      SizedBox(height: 25.v),
                    ],
                  ),
                ),
              ),
              _buildCard3(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlusPrimarycontainer,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
            child: Text(
              "Clear All",
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.h),
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage101x97,
            height: 83.v,
            width: 79.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              right: 4.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pizza",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Like: 560  Buy: 999+",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 9.v),
                _buildNinetyThree(
                  context,
                  price: "59",
                  quantityText: "2",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard2(BuildContext context) {
    return SizedBox(
      height: 128.v,
      width: 355.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: _buildCard4(
              context,
              title: "Vegan salad",
              likeBuyText: "Like: 560  Buy: 999+",
              price: "39",
              quantityText: "2",
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage77x116,
            height: 77.v,
            width: 116.h,
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard3(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 128.v,
        width: 381.h,
        margin: EdgeInsets.only(bottom: 267.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 31.h),
              child: _buildCard4(
                context,
                title: "Food flat lay",
                likeBuyText: "Like: 560  Buy: 999+",
                price: "50",
                quantityText: "2",
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage116x175,
              height: 116.v,
              width: 175.h,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildNinetyThree(
    BuildContext context, {
    required String price,
    required String quantityText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 7.v,
          ),
          child: Text(
            price,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillGrayTL16,
          child: CustomImageView(
            imagePath: ImageConstant.imgPlus,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
            bottom: 4.v,
          ),
          child: Text(
            quantityText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlusBlack900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String totalText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 3.v,
          ),
          child: Text(
            totalText,
            style: CustomTextStyles.titleLarge20.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCard4(
    BuildContext context, {
    required String title,
    required String likeBuyText,
    required String price,
    required String quantityText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Text(
            title,
            style: CustomTextStyles.bodyLarge16.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            likeBuyText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray50002,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 104.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      price,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillGrayTL16,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlus,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 5.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      quantityText,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL16,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlusBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
