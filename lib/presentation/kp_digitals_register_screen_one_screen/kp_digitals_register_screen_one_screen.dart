import 'controller/kp_digitals_register_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/core/utils/validation_functions.dart';
import 'package:kp_digital/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KpDigitalsRegisterScreenOneScreen
    extends GetWidget<KpDigitalsRegisterScreenOneController> {
  KpDigitalsRegisterScreenOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.41, -0.46),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.red50Df,
                      theme.colorScheme.primaryContainer,
                      appTheme.gray100.withOpacity(0)
                    ])),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(top: 42.v),
                        child: Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgKpDigitalsAppLogo,
                                      height: 114.v,
                                      width: 132.h,
                                      margin: EdgeInsets.only(left: 92.h)),
                                  SizedBox(height: 35.v),
                                  Text("msg_create_your_account".tr,
                                      style: CustomTextStyles
                                          .titleMediumPurple7000118),
                                  SizedBox(height: 14.v),
                                  _buildRegisterEmail(),
                                  SizedBox(height: 15.v),
                                  _buildRegisterPhoneNumber(),
                                  SizedBox(height: 17.v),
                                  _buildRegisterEmail1(),
                                  SizedBox(height: 25.v),
                                  CustomElevatedButton(
                                      text: "lbl_submit".tr.toUpperCase(),
                                      margin: EdgeInsets.only(right: 30.h),
                                      onPressed: () {
                                        onTapSubmit();
                                      }),
                                  SizedBox(height: 15.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 1.adaptSize,
                                      width: 1.adaptSize,
                                      alignment: Alignment.centerRight),
                                  SizedBox(height: 1.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean();
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 51.h),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "msg_already_have_an2"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray600),
                                                TextSpan(text: " "),
                                                TextSpan(
                                                    text: "lbl_login".tr,
                                                    style: CustomTextStyles
                                                        .labelLargePurple70001)
                                              ]),
                                              textAlign: TextAlign.left))),
                                  SizedBox(height: 36.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 1.adaptSize,
                                      width: 1.adaptSize,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 60.h)),
                                  SizedBox(height: 31.v),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVector,
                                      height: 1.adaptSize,
                                      width: 1.adaptSize),
                                  SizedBox(height: 34.v),
                                  SizedBox(
                                      width: 236.h,
                                      child: Divider(indent: 21.h))
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 63.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeftPurple7000144x44,
            margin: EdgeInsets.fromLTRB(30.h, 6.v, 301.h, 6.v),
            onTap: () {
              onTapIconButton();
            }));
  }

  /// Section Widget
  Widget _buildRegisterEmail() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text("lbl_your_name".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 5.v),
      Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: CustomTextFormField(
              controller: controller.nameValueController,
              hintText: "lbl_jhon_doe".tr,
              hintStyle: CustomTextStyles.titleMediumGray600,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v)))
    ]);
  }

  /// Section Widget
  Widget _buildRegisterPhoneNumber() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child:
              Text("lbl_phone_number".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 5.v),
      Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: CustomTextFormField(
              controller: controller.phoneValueController,
              hintText: "msg_91_999_391_2345".tr,
              hintStyle: theme.textTheme.bodyMedium!,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 19.h, 15.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgMinimize,
                      height: 18.v,
                      width: 11.h)),
              suffixConstraints: BoxConstraints(maxHeight: 50.v)))
    ]);
  }

  /// Section Widget
  Widget _buildRegisterEmail1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text("lbl_email".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 5.v),
      Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "lbl_enter_e_mail".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLockGray30001,
                      height: 16.v,
                      width: 20.h)),
              suffixConstraints: BoxConstraints(maxHeight: 50.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              }))
    ]);
  }

  /// Navigates to the kpDigitalsLoginScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.kpDigitalsLoginScreen,
    );
  }

  /// Navigates to the kpDigitalsLoginScreen when the action is triggered.
  onTapSubmit() {
    Get.toNamed(
      AppRoutes.kpDigitalsLoginScreen,
    );
  }

  /// Navigates to the kpDigitalsLoginScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.kpDigitalsLoginScreen,
    );
  }
}
