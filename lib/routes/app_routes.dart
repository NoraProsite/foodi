import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:noraprosite_s_application1/presentation/food_details_one_screen/food_details_one_screen.dart';
import 'package:noraprosite_s_application1/presentation/categories_screen/categories_screen.dart';
import 'package:noraprosite_s_application1/presentation/delivery_map_screen/delivery_map_screen.dart';
import 'package:noraprosite_s_application1/presentation/product_details_screen/product_details_screen.dart';
import 'package:noraprosite_s_application1/presentation/delivery_time_screen/delivery_time_screen.dart';
import 'package:noraprosite_s_application1/presentation/forgot_pasword_one_screen/forgot_pasword_one_screen.dart';
import 'package:noraprosite_s_application1/presentation/forgot_pasword_two_screen/forgot_pasword_two_screen.dart';
import 'package:noraprosite_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:noraprosite_s_application1/presentation/food_details_screen/food_details_screen.dart';
import 'package:noraprosite_s_application1/presentation/add_your_card_screen/add_your_card_screen.dart';
import 'package:noraprosite_s_application1/presentation/log_in_screen/log_in_screen.dart';
import 'package:noraprosite_s_application1/presentation/search_result_screen/search_result_screen.dart';
import 'package:noraprosite_s_application1/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:noraprosite_s_application1/presentation/cahange_password_screen/cahange_password_screen.dart';
import 'package:noraprosite_s_application1/presentation/filter_screen/filter_screen.dart';
import 'package:noraprosite_s_application1/presentation/cart_style_one_screen/cart_style_one_screen.dart';
import 'package:noraprosite_s_application1/presentation/cart_style_two_screen/cart_style_two_screen.dart';
import 'package:noraprosite_s_application1/presentation/address_screen/address_screen.dart';
import 'package:noraprosite_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:noraprosite_s_application1/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:noraprosite_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String foodDetailsOneScreen = '/food_details_one_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String deliveryMapScreen = '/delivery_map_screen';

  static const String productDetailsScreen = '/product_details_screen';

  static const String deliveryTimeScreen = '/delivery_time_screen';

  static const String forgotPaswordOneScreen = '/forgot_pasword_one_screen';

  static const String forgotPaswordTwoScreen = '/forgot_pasword_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String foodDetailsScreen = '/food_details_screen';

  static const String addYourCardScreen = '/add_your_card_screen';

  static const String logInScreen = '/log_in_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String cahangePasswordScreen = '/cahange_password_screen';

  static const String filterScreen = '/filter_screen';

  static const String cartStyleOneScreen = '/cart_style_one_screen';

  static const String cartStyleTwoScreen = '/cart_style_two_screen';

  static const String addressScreen = '/address_screen';

  static const String paymentScreen = '/payment_screen';

  static const String thankYouScreen = '/thank_you_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    foodDetailsOneScreen: (context) => FoodDetailsOneScreen(),
    categoriesScreen: (context) => CategoriesScreen(),
    deliveryMapScreen: (context) => DeliveryMapScreen(),
    productDetailsScreen: (context) => ProductDetailsScreen(),
    deliveryTimeScreen: (context) => DeliveryTimeScreen(),
    forgotPaswordOneScreen: (context) => ForgotPaswordOneScreen(),
    forgotPaswordTwoScreen: (context) => ForgotPaswordTwoScreen(),
    signUpScreen: (context) => SignUpScreen(),
    foodDetailsScreen: (context) => FoodDetailsScreen(),
    addYourCardScreen: (context) => AddYourCardScreen(),
    logInScreen: (context) => LogInScreen(),
    searchResultScreen: (context) => SearchResultScreen(),
    myProfileScreen: (context) => MyProfileScreen(),
    cahangePasswordScreen: (context) => CahangePasswordScreen(),
    filterScreen: (context) => FilterScreen(),
    cartStyleOneScreen: (context) => CartStyleOneScreen(),
    cartStyleTwoScreen: (context) => CartStyleTwoScreen(),
    addressScreen: (context) => AddressScreen(),
    paymentScreen: (context) => PaymentScreen(),
    thankYouScreen: (context) => ThankYouScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
