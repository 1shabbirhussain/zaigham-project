import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';

import 'controller/categories_controller.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_side_drawer".tr,
                          style: theme.textTheme.titleLarge),
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
                              style: CustomTextStyles.titleMediumPurple70001)),
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
                                        style: CustomTextStyles
                                            .bodySmallPurple70002)),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: CustomIconButton(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        padding: EdgeInsets.all(5.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineBlack,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgSettings)))
                              ])),
                      SizedBox(height: 18.v),
                      Container(
                          margin: EdgeInsets.only(right: 52.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 6.v),
                          decoration: AppDecoration.fillPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCalculator,
                                height: 18.v,
                                width: 21.h,
                                margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 17.h, top: 1.v),
                                child: Text("msg_lorem_ipsum_dummy".tr,
                                    style: CustomTextStyles
                                        .titleSmallPoppinsOnPrimary))
                          ])),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr,
                              onTapUserThirteen: () {
                                onTapUserThirteen();
                              })),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr,
                              onTapUserThirteen: () {
                                onTapUserThirteen1();
                              })),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr)),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: _buildUserThirteen(
                              bookingStatus: "msg_lorem_ipsum_dummy".tr)),
                      SizedBox(height: 54.v),
                      GestureDetector(
                          onTap: () {
                            onTapUserThirteen2();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgThumbsUp,
                                    height: 22.v,
                                    width: 17.h),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 18.h, top: 2.v),
                                    child: Text("lbl_logout".tr,
                                        style: CustomTextStyles
                                            .titleSmallPoppinsSecondaryContainer))
                              ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  AppBar _buildAppBar() {
    return AppBar(
      // leadingWidth: double.maxFinite,
      leading: IconButton(
        icon: CircleAvatar(
          backgroundColor: appTheme.purple70002,
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          onTapIconButton();
        },
      ),
      // leading: AppbarLeadingIconbuttonThree(
      //   imagePath: ImageConstant.imgArrowLeft,
      //   margin: EdgeInsets.fromLTRB(30.h, 3.v, 301.h, 3.v),
      //   onTap: () {
      //     onTapIconButton();
      //   },
      // ),
    );
  }

  /// Common widget
  Widget _buildUserThirteen({
    required String bookingStatus,
    Function? onTapUserThirteen,
  }) {
    return GestureDetector(
        onTap: () {
          onTapUserThirteen!.call();
        },
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp, height: 22.v, width: 17.h),
          Padding(
              padding: EdgeInsets.only(left: 18.h, top: 2.v),
              child: Text(bookingStatus,
                  style: CustomTextStyles.titleSmallPoppinsSecondaryContainer
                      .copyWith(color: theme.colorScheme.secondaryContainer)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapIconButton() {
    Get.back();
  }

  /// Navigates to the subCategoriesScreen when the action is triggered.
  onTapUserThirteen() {
    Get.toNamed(
      AppRoutes.subCategoriesScreen,
    );
  }

  /// Navigates to the childCategoriesScreen when the action is triggered.
  onTapUserThirteen1() {
    Get.toNamed(
      AppRoutes.childCategoriesScreen,
    );
  }

  /// Navigates to the kpDigitalsLoginScreen when the action is triggered.
  onTapUserThirteen2() {
    Get.offAllNamed(
      AppRoutes.kpDigitalsLoginScreen,
    );
  }
}
