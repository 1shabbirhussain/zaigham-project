import 'controller/kp_digitals_splash_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';

// ignore_for_file: must_be_immutable
class KpDigitalsSplashScreenOneScreen
    extends GetWidget<KpDigitalsSplashScreenOneController> {
  const KpDigitalsSplashScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 265.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgKpDigitalsAppLogo,
                          height: 183.v,
                          width: 213.h,
                          margin: EdgeInsets.only(left: 50.h),
                        ),
                        SizedBox(height: 196.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 1.adaptSize,
                          width: 1.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 58.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 1.adaptSize,
                          width: 1.adaptSize,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(right: 60.h),
                        ),
                        SizedBox(height: 31.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 1.adaptSize,
                          width: 1.adaptSize,
                        ),
                        SizedBox(height: 34.v),
                        SizedBox(
                          width: 236.h,
                          child: Divider(
                            indent: 21.h,
                          ),
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
}
