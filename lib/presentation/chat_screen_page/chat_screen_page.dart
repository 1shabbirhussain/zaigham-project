import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/app_bar/appbar_subtitle.dart';
import 'package:kp_digital/widgets/app_bar/appbar_title.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';
import 'package:kp_digital/widgets/custom_search_view.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';

import 'controller/chat_screen_controller.dart';
import 'models/chat_screen_model.dart';

// ignore_for_file: must_be_immutable
class ChatScreenPage extends StatelessWidget {
  ChatScreenPage({Key? key}) : super(key: key);

  ChatScreenController controller =
      Get.put(ChatScreenController(ChatScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 14.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/message.svg'),
              Spacer(),
              CustomSearchView(
                suffix: SizedBox(),
                controller: controller.senderController,
                hintText: "Type Message".tr,
                prefix: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.send),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 52.v,
        leadingWidth: 72.h,
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
        centerTitle: true,
        title: Column(children: [
          AppbarTitle(text: "lbl_michael_amy".tr),
          SizedBox(height: 2.v),
          AppbarSubtitle(
              text: "msg_today_at_10_45_am".tr,
              margin: EdgeInsets.only(left: 2.h, right: 3.h))
        ]),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup,
              margin: EdgeInsets.fromLTRB(43.h, 13.v, 43.h, 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildSenderStack() {
    return SizedBox(
        height: 48.v,
        width: 311.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage15,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.topLeft),
          CustomTextFormField(
              width: 306.h,
              controller: controller.senderController,
              hintText: "lbl_amy_swanson".tr,
              textInputAction: TextInputAction.done,
              alignment: Alignment.bottomCenter,
              suffix: Container(
                  margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSearchCopy2,
                      height: 21.v,
                      width: 20.h)),
              suffixConstraints: BoxConstraints(maxHeight: 39.v),
              contentPadding:
                  EdgeInsets.only(left: 30.h, top: 2.v, bottom: 2.v),
              borderDecoration: TextFormFieldStyleHelper.underLineGray,
              filled: false),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(top: 15.v, right: 113.h),
                  decoration: BoxDecoration(
                      color: appTheme.greenA700,
                      borderRadius: BorderRadius.circular(5.h))))
        ]));
  }

  /// Section Widget
  Widget _buildViewRow() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(children: [
          SizedBox(
              height: 50.v,
              width: 261.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 261.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary,
                            borderRadius: BorderRadius.circular(24.h),
                            border:
                                Border.all(color: appTheme.gray300, width: 1.h),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.black900.withOpacity(0.05),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 0))
                            ]))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 233.h,
                        margin: EdgeInsets.fromLTRB(19.h, 6.v, 9.h, 6.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.v, bottom: 6.v),
                                  child: Text("lbl_type_message".tr,
                                      style: theme.textTheme.bodyMedium)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecordBtn,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize)
                            ])))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: CustomIconButton(
                  height: 49.adaptSize,
                  width: 49.adaptSize,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRecordBtnPurple700)))
        ]));
  }

  /// Common widget
  Widget _buildDurationColumn({
    required String orderMessage,
    required String timeAgo,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 188.h,
                              margin: EdgeInsets.only(left: 11.h),
                              child: Text(orderMessage,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.labelMediumGray800
                                      .copyWith(color: appTheme.gray800)))),
                      SizedBox(height: 4.v),
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(timeAgo,
                              style: CustomTextStyles.labelLargeAvenirPurple700
                                  .copyWith(color: appTheme.purple700)))
                    ]))));
  }

  /// Navigates to the productPageScreenTwoScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.productPageScreenTwoScreen,
    );
  }
}
