import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:noraprosite_s_application1/core/app_export.dart';
import 'package:noraprosite_s_application1/widgets/custom_icon_button.dart';

class DeliveryMapScreen extends StatelessWidget {
  DeliveryMapScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDeliveryMap(context),
              SizedBox(height: 5.v),
              _buildTimePlace(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildDeliveryMan(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryMap(BuildContext context) {
    return SizedBox(
      height: 635.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildTimePlace(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 43.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.8,
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(bottom: 27.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Time",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "28 minutes.",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.8,
            child: CustomImageView(
              imagePath: ImageConstant.imgMapPin,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(bottom: 27.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 12.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Place",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Alma St 6500",
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryMan(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 32.h,
        right: 32.h,
        bottom: 28.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage72x72,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              36.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 12.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Esther Howard",
                  style: CustomTextStyles.titleLarge20,
                ),
                Opacity(
                  opacity: 0.64,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Text(
                      "Delivery man",
                      style: CustomTextStyles.bodyMediumBlack900_3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillGrayTL28,
              child: CustomImageView(
                imagePath: ImageConstant.imgPhone,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
