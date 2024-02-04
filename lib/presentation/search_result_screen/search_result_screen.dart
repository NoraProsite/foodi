import '../search_result_screen/widgets/pizzacomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noraprosite_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noraprosite_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchResultScreen extends StatelessWidget {
  SearchResultScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 31.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search",
                                  alignment: Alignment.center))),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 31.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Search ",
                                    style:
                                        CustomTextStyles.displaySmallff0b0b0b),
                                TextSpan(
                                    text: "Result Food",
                                    style: CustomTextStyles
                                        .displaySmallGilroyff0b0b0b)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 34.v),
                      _buildPizzaComponent(context)
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
  Widget _buildPizzaComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 31.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return PizzacomponentItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
