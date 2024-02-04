import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeGilroyBoldBlack900 =>
      theme.textTheme.bodyLarge!.gilroyBold.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontSize: 16.fSize,
      );
  static get bodyLargeGilroyBoldOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.gilroyBold.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.67),
        fontSize: 16.fSize,
      );
  static get bodyLargeGilroyRegularBluegray40001 =>
      theme.textTheme.bodyLarge!.gilroyRegular.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50002,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50002_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.72),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.61),
      );
  static get bodyMediumBlack900_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumff0b0b0b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF0B0B0B),
      );
  static get bodyMediumff0b0b0b_1 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF0B0B0B),
      );
  static get bodyMediumffa8a8a8 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFA8A8A8),
      );
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  // Display style
  static get displayMediumGilroyRegular =>
      theme.textTheme.displayMedium!.gilroyRegular;
  static get displaySmallGilroyff0b0b0b =>
      theme.textTheme.displaySmall!.gilroy.copyWith(
        color: Color(0XFF0B0B0B),
        fontWeight: FontWeight.w300,
      );
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get displaySmallff0b0b0b => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFF0B0B0B),
      );
  // Headline text style
  static get headlineLargeGilroyBoldOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.gilroyBold.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineLargeGilroyRegular =>
      theme.textTheme.headlineLarge!.gilroyRegular;
  static get headlineLargeGilroyff0b0b0b =>
      theme.textTheme.headlineLarge!.gilroy.copyWith(
        color: Color(0XFF0B0B0B),
        fontWeight: FontWeight.w300,
      );
  static get headlineLargeff0b0b0b => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF0B0B0B),
      );
  static get headlineSmallGray50003 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray50003,
      );
  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );
  static get titleLargeGray500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 20.fSize,
      );
}

extension on TextStyle {
  TextStyle get gilroyBold {
    return copyWith(
      fontFamily: 'Gilroy-Bold',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }

  TextStyle get gilroyRegular {
    return copyWith(
      fontFamily: 'Gilroy-Regular',
    );
  }

  TextStyle get gilroyMedium {
    return copyWith(
      fontFamily: 'Gilroy-Medium',
    );
  }
}
