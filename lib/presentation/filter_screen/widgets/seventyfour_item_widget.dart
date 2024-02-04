import 'package:flutter/material.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeventyfourItemWidget extends StatelessWidget {
  const SeventyfourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Open",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Gilroy-Medium',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
