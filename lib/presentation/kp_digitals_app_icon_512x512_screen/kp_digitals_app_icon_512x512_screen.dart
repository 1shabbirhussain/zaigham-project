import 'controller/kp_digitals_app_icon_512x512_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';

// ignore_for_file: must_be_immutable
class KpDigitalsAppIcon512x512Screen
    extends GetWidget<KpDigitalsAppIcon512x512Controller> {
  const KpDigitalsAppIcon512x512Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: 512.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.imgKpDigitalsAppLogo,
                height: 269.v,
                width: 312.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
