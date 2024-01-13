import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "KP Digitals App Icon 512x512".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsAppIcon512x512Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Splash Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsSplashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Login Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kpDigitalsLoginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Register Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsRegisterScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Categories Screen One - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoriesScreenOneContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Categories Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoriesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sub Categories Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subCategoriesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Child Categories Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.childCategoriesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Page Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productPageScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Page Screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productPageScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Splash Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsSplashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Login Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsLoginScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "KP Digitals Register Screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.kpDigitalsRegisterScreen),
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
  Widget _buildAppNavigation() {
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
                "App Navigation".tr,
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
                "Check your app's UI from the below demo screens of your app."
                    .tr,
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
  Widget _buildScreenTitle({
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
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
