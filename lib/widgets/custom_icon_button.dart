import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(24.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5002,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(36.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              20,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL28 => BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(28.h),
      );
  static BoxDecoration get fillGrayTL36 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get fillPrimaryTL36 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(36.h),
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(28.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              8,
              8,
            ),
          ),
        ],
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo600,
        borderRadius: BorderRadius.circular(34.h),
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA200,
        borderRadius: BorderRadius.circular(34.h),
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPrimaryTL24 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineGrayA => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(22.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPrimaryTL16 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
}
