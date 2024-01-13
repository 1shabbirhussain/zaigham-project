import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';

import 'controller/profile_screen_controller.dart';
import 'models/profile_screen_model.dart';

// ignore_for_file: must_be_immutable
class ProfileScreenPage extends StatelessWidget {
  ProfileScreenPage({Key? key}) : super(key: key);

  ProfileScreenController controller =
      Get.put(ProfileScreenController(ProfileScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                child: ListView(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                    children: [
                      Text("lbl_profile".tr,
                          style: TextStyle(
                              color: appTheme.purple70001,
                              fontSize: 20.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 19.v),
                      Align(
                          alignment: Alignment.center,
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              color: appTheme.black900,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder56),
                              child: Container(
                                  height: 112.adaptSize,
                                  width: 112.adaptSize,
                                  decoration: AppDecoration.fillBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder56),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionOrange700,
                                            height: 61.v,
                                            width: 71.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgHandsomeConfid,
                                            height: 112.adaptSize,
                                            width: 112.adaptSize,
                                            radius: BorderRadius.circular(56.h),
                                            alignment: Alignment.center)
                                      ])))),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_jhon_doe".tr,
                              style: TextStyle(
                                  color: appTheme.purple700,
                                  fontSize: 16.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700))),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgLockPurple70002,
                                    height: 16.v,
                                    width: 20.h,
                                    margin:
                                        EdgeInsets.only(top: 4.v, bottom: 5.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 7.h, top: 4.v, bottom: 3.v),
                                    child: Text("msg_jhondoe_gmail_com".tr,
                                        style: TextStyle(
                                            color: appTheme.purple70001,
                                            fontSize: 12.fSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400))),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: CustomIconButton(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        padding: EdgeInsets.all(5.h),
                                        decoration: IconButtonStyleHelper2
                                            .outlineBlackTL12,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgSettings)))
                              ])),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(right: 52.h),
                          child: CustomTextFormField(
                              controller:
                                  controller.orderHistoryvalueController,
                              hintText: "lbl_order_history".tr,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(17.h, 7.v, 17.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgMegaphone,
                                      height: 22.v,
                                      width: 18.h)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 36.v))),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSettingsPurple70001,
                                height: 22.adaptSize,
                                width: 22.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("msg_offers_rewards".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 20.v,
                                width: 22.h),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_saved_products".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSearch,
                                height: 22.v,
                                width: 21.h),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h, top: 2.v),
                                child: Text("lbl_settings".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionPurple70001,
                                    height: 15.v,
                                    width: 22.h,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 3.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text(
                                        "msg_credit_limit_eligibllity".tr,
                                        style: TextStyle(
                                            color: appTheme.gray800,
                                            fontSize: 14.fSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)))
                              ])),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgThumbsUpPurple70001,
                                height: 22.adaptSize,
                                width: 22.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h, top: 2.v),
                                child: Text("msg_add_payment_method".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgHomePurple70001,
                                height: 22.v,
                                width: 24.h),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text("lbl_saved_addresses".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgSettingsPurple7000122x27,
                                height: 22.v,
                                width: 27.h),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h, top: 2.v),
                                child: Text("lbl_help_support".tr,
                                    style: TextStyle(
                                        color: appTheme.gray800,
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500)))
                          ])),
                      SizedBox(height: 18.v),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed(AppRoutes.kpDigitalsLoginScreen);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgThumbsUpPurple7000122x22,
                                  height: 22.adaptSize,
                                  width: 22.adaptSize),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.h, top: 2.v),
                                  child: Text("lbl_log_out2".tr,
                                      style: TextStyle(
                                          color: appTheme.gray800,
                                          fontSize: 14.fSize,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500)))
                            ])),
                      ),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 74.h,
      leading: IconButton(
        icon: CircleAvatar(
          backgroundColor: appTheme.purple70002,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.categoriesScreen);
        },
      ),
      // leading: AppbarLeadingIconbuttonTwo(
      //   imagePath: ImageConstant.imgTelevision,
      //   margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 3.v),
      //   onTap: () {
      //     onTapIconButton();
      //   },
      // ),
      actions: [
        AppbarTrailingImage(
            imagePath: ImageConstant.imgBell2,
            margin: EdgeInsets.symmetric(horizontal: 31.h, vertical: 14.v),
            onTap: () {
              Get.toNamed(AppRoutes.notificationScreen);
            })
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
