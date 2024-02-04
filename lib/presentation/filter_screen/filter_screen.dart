import '../filter_screen/widgets/fiftysix_item_widget.dart';
import '../filter_screen/widgets/seventyfour_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_elevated_button.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.h),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
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
                SizedBox(height: 36.v),
                Text(
                  "Filter",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 26.v),
                _buildSaladOne(context),
                SizedBox(height: 37.v),
                Text(
                  "Locations",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 25.v),
                _buildFiftySix(context),
                SizedBox(height: 39.v),
                Text(
                  "Filter by",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 23.v),
                _buildSeventyFour(context),
                SizedBox(height: 37.v),
                Text(
                  "Price",
                  style: CustomTextStyles.bodyLarge16,
                ),
                SizedBox(height: 18.v),
                SliderTheme(
                  data: SliderThemeData(
                    trackShape: RoundedRectSliderTrackShape(),
                    activeTrackColor: theme.colorScheme.primary,
                    inactiveTrackColor:
                        theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    thumbColor: theme.colorScheme.primary,
                    thumbShape: RoundSliderThumbShape(),
                  ),
                  child: RangeSlider(
                    values: RangeValues(
                      0,
                      0,
                    ),
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 10.v),
                _buildPrice(context),
                SizedBox(height: 44.v),
                CustomElevatedButton(
                  text: "Apply",
                ),
                SizedBox(height: 31.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopBar(BuildContext context) {
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildSaladOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: _buildPasta(
              context,
              pastaImage: ImageConstant.imgSalad1,
              pasta: "Food",
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 33.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder52,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCoffeeShop1,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Drinks",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildPasta(
              context,
              pastaImage: ImageConstant.imgPasta1,
              pasta: "Pasta",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySix(BuildContext context) {
    return Wrap(
      runSpacing: 12.v,
      spacing: 12.h,
      children: List<Widget>.generate(6, (index) => FiftysixItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return Wrap(
      runSpacing: 12.v,
      spacing: 12.h,
      children: List<Widget>.generate(6, (index) => SeventyfourItemWidget()),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Row(
      children: [
        Text(
          "0",
          style: theme.textTheme.bodyMedium,
        ),
        Spacer(
          flex: 16,
        ),
        Text(
          "20",
          style: CustomTextStyles.bodyMediumBlack900,
        ),
        Spacer(
          flex: 69,
        ),
        Text(
          "80",
          style: CustomTextStyles.bodyMediumBlack900,
        ),
        Spacer(
          flex: 13,
        ),
        Text(
          "99",
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPasta(
    BuildContext context, {
    required String pastaImage,
    required String pasta,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder52,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Opacity(
                opacity: 0.8,
                child: CustomImageView(
                  imagePath: pastaImage,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                pasta,
                style: CustomTextStyles.bodyMediumGray500.copyWith(
                  color: appTheme.gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
