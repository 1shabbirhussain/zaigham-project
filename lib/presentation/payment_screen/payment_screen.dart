import 'controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/core/utils/validation_functions.dart';
import 'package:kp_digital/widgets/app_bar/appbar_leading_iconbutton_three.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';
import 'package:kp_digital/widgets/custom_radio_button.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  PaymentScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.h, vertical: 17.v),
                            child: Column(children: [
                              _buildEmail(),
                              SizedBox(height: 15.v),
                              CustomElevatedButton(
                                  text: "lbl_submit".tr.toUpperCase(),
                                  buttonStyle:
                                      CustomButtonStyles.fillPurpleTL15),
                              SizedBox(height: 24.v),
                              Divider(color: appTheme.gray400),
                              SizedBox(height: 16.v),
                              Text("msg_choode_payment_methods".tr,
                                  style: CustomTextStyles.labelLargeBlack900),
                              SizedBox(height: 9.v),
                              _buildPaymentDetails(),
                              SizedBox(height: 16.v),
                              _buildPaymentOptions(),
                              SizedBox(height: 14.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_please_use_the_same".tr,
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 19.v),
                              Divider(color: appTheme.gray400),
                              SizedBox(height: 18.v),
                              _buildPaymentMethods(),
                              SizedBox(height: 21.v),
                              CustomElevatedButton(
                                  text: "msg_proceed_to_payment"
                                      .tr
                                      .toUpperCase()),
                              SizedBox(height: 25.v),
                              _buildPaymentGroup(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonThree(
            imagePath: ImageConstant.imgArrowLeftPurple70001,
            margin: EdgeInsets.fromLTRB(30.h, 3.v, 301.h, 3.v),
            onTap: () {
              onTapIconButton();
            }));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text("lbl_email".tr, style: theme.textTheme.titleSmall)),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_enter_e_mail_address".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 17.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgLockOnprimarycontainer,
                  height: 16.v,
                  width: 20.h)),
          suffixConstraints: BoxConstraints(maxHeight: 50.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24)
    ]);
  }

  /// Section Widget
  Widget _buildPaymentDetails() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 5.v, bottom: 4.v),
          child: Text("msg_investment_amount".tr,
              style: CustomTextStyles.labelLargeGray50001)),
      Text("lbl_100".tr, style: CustomTextStyles.titleLargeBlack900)
    ]);
  }

  /// Section Widget
  Widget _buildPaymentOptions() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkTeal500,
              height: 17.adaptSize,
              width: 17.adaptSize,
              margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 2.v),
              child: Text("lbl_upi_payment".tr,
                  style: CustomTextStyles.titleSmallPoppinsBlack900)),
          Spacer(),
          Container(
              width: 123.h,
              margin: EdgeInsets.only(bottom: 2.v),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 19.adaptSize,
                        width: 19.adaptSize,
                        margin: EdgeInsets.only(top: 1.v)),
                    Text("lbl_icici_4567".tr,
                        style: CustomTextStyles.titleSmallPoppinsLightblueA700),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector3,
                        height: 9.v,
                        width: 15.h,
                        margin: EdgeInsets.symmetric(vertical: 5.v))
                  ]))
        ]);
  }

  /// Section Widget
  Widget _buildPaymentMethods() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 92.v,
              width: 63.h,
              child: Stack(alignment: Alignment.topRight, children: [
                _buildAttFlour(textLabel: "lbl_google_pay".tr),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCheckmarkTeal500,
                            height: 17.adaptSize,
                            width: 17.adaptSize,
                            alignment: Alignment.center)))
              ])),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: _buildAttFlour(textLabel: "lbl_photoshop".tr)),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: _buildAttFlour(textLabel: "lbl_bhim".tr)),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Column(children: [
                Container(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.h, vertical: 21.v),
                    decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder30),
                    child: CustomImageView(
                        imagePath: ImageConstant.img2ad43354be8861c,
                        height: 12.v,
                        width: 46.h,
                        radius: BorderRadius.circular(30.h),
                        alignment: Alignment.bottomCenter)),
                SizedBox(height: 15.v),
                Text("lbl_phone_pay".tr,
                    style: CustomTextStyles.labelMediumBlack900)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentGroup() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 154.h),
            child: Obx(() => Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 68.h),
                      child: CustomRadioButton(
                          text: "lbl_enter_upi_id".tr,
                          value: controller
                              .paymentModelObj.value.radioList.value[0],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 15.v, right: 63.h),
                      child: CustomRadioButton(
                          text: "lbl_net_banking".tr,
                          value: controller
                              .paymentModelObj.value.radioList.value[1],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 16.v),
                      child: CustomRadioButton(
                          text: "msg_pay_later_with_mandate".tr,
                          value: controller
                              .paymentModelObj.value.radioList.value[2],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          }))
                ]))));
  }

  /// Common widget
  Widget _buildAttFlour({required String textLabel}) {
    return Column(children: [
      CustomIconButton(
          height: 60.adaptSize,
          width: 60.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(imagePath: ImageConstant.imgGroup6)),
      SizedBox(height: 15.v),
      Text(textLabel,
          style: CustomTextStyles.labelMediumBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the productPageScreenTwoScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.productPageScreenTwoScreen,
    );
  }
}
