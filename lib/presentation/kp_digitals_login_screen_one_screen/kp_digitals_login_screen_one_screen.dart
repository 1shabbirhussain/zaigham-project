import 'controller/kp_digitals_login_screen_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/core/utils/validation_functions.dart';
import 'package:kp_digital/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_checkbox_button.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_outlined_button.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class KpDigitalsLoginScreenOneScreen
    extends GetWidget<KpDigitalsLoginScreenOneController> {
  KpDigitalsLoginScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.v),
            child: Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgKpDigitalsAppLogo,
                    height: 114.v,
                    width: 132.h,
                    margin: EdgeInsets.only(left: 92.h),
                  ),
                  SizedBox(height: 35.v),
                  _buildEmailColumn(),
                  SizedBox(height: 18.v),
                  _buildPasswordColumn(),
                  SizedBox(height: 18.v),
                  _buildTwoRow(),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                    text: "lbl_login".tr.toUpperCase(),
                    margin: EdgeInsets.only(right: 30.h),
                  ),
                  SizedBox(height: 18.v),
                  CustomOutlinedButton(
                    height: 56.v,
                    text: "lbl_register".tr.toUpperCase(),
                    margin: EdgeInsets.only(right: 30.h),
                    buttonStyle: CustomButtonStyles.outlinePurple,
                    buttonTextStyle: CustomTextStyles.titleMediumPurple70002,
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_don_t_have_an_account2".tr,
                            style: CustomTextStyles.labelLargeGray600,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_sign_up".tr,
                            style: CustomTextStyles.labelLargePurple70001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 18.v),
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
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 63.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftPurple7000144x44,
        margin: EdgeInsets.fromLTRB(30.h, 6.v, 301.h, 6.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            "lbl_username".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: CustomTextFormField(
            controller: controller.usernamevalueController,
            hintText: "msg_91_999_391_2345".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 20.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 14.adaptSize,
                width: 14.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 50.v,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            "lbl_password".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 6.v),
        Padding(
          padding: EdgeInsets.only(right: 30.h),
          child: Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "lbl".tr,
              hintStyle: theme.textTheme.bodyMedium!,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 15.v, 20.h, 15.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 18.v,
                    width: 14.h,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 50.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwoRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 38.h,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomCheckboxButton(
              text: "msg_keep_me_logged_in".tr,
              value: controller.keepMeLoggedIn.value,
              onChange: (value) {
                controller.keepMeLoggedIn.value = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              "msg_forgot_password".tr,
              style: CustomTextStyles.labelLargePurple70002,
            ),
          ),
        ],
      ),
    );
  }
}
