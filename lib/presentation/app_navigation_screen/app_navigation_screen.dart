import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Details One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.foodDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Categories",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delivery Map",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliveryMapScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Product Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Delivery Time",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.deliveryTimeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Pasword One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPaswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Pasword Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPaswordTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.foodDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Your Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addYourCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Result",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchResultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cahange Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cahangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filter",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart Style One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartStyleOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart Style Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartStyleTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Thank You",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.thankYouScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
