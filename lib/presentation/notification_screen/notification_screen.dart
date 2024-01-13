import '../notification_screen/widgets/notificationlist1_item_widget.dart';
import '../notification_screen/widgets/notificationlist_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notificationlist1_item_model.dart';
import 'models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Container(
                        height: 760.v,
                        width: 360.h,
                        margin: EdgeInsets.only(right: 15.h),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Text("lbl_notification".tr,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        SizedBox(height: 23.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 14.h),
                                            child: Text(
                                                "msg_please_enter_the".tr,
                                                style: CustomTextStyles
                                                    .bodySmall12)),
                                        SizedBox(height: 9.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 14.h, right: 18.h),
                                            child: _buildNineteen(
                                                dynamicText1:
                                                    "lbl_yesterday".tr,
                                                dynamicText2:
                                                    "lbl_clear_all".tr)),
                                        SizedBox(height: 340.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 14.h, right: 18.h),
                                            child: _buildNineteen(
                                                dynamicText1:
                                                    "lbl_yesterday".tr,
                                                dynamicText2:
                                                    "lbl_clear_all".tr)),
                                        SizedBox(height: 12.v),
                                        _buildNotificationList()
                                      ]))),
                          _buildLatestGroceryCollectionRow(),
                          _buildNotificationList1()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(30.h, 3.v, 301.h, 3.v),
            onTap: () {
              onTapBack();
            }));
  }

  /// Section Widget
  Widget _buildNotificationList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.v);
        },
        itemCount: controller
            .notificationModelObj.value.notificationlistItemList.value.length,
        itemBuilder: (context, index) {
          NotificationlistItemModel model = controller
              .notificationModelObj.value.notificationlistItemList.value[index];
          return NotificationlistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildLatestGroceryCollectionRow() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 16.h, top: 670.v),
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
            decoration: AppDecoration.outlineGrayF
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup4,
                      height: 45.adaptSize,
                      width: 45.adaptSize,
                      margin: EdgeInsets.only(top: 20.v, bottom: 15.v)),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 19.h, top: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("msg_group_member_notification".tr,
                                      style: CustomTextStyles
                                          .titleSmallMulishGray900),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 22.h, bottom: 2.v),
                                      child: Text("lbl_9_09_2023".tr,
                                          style: CustomTextStyles.bodySmall_1))
                                ]),
                                SizedBox(height: 4.v),
                                Container(
                                    width: 243.h,
                                    margin: EdgeInsets.only(right: 11.h),
                                    child: Text("msg_slow_and_steady".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("lbl_jan_18_2020".tr,
                                        style: CustomTextStyles
                                            .labelLargeAvenirNextGray500))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildNotificationList1() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 109.v, bottom: 337.v),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 14.v);
                },
                itemCount: controller.notificationModelObj.value
                    .notificationlist1ItemList.value.length,
                itemBuilder: (context, index) {
                  Notificationlist1ItemModel model = controller
                      .notificationModelObj
                      .value
                      .notificationlist1ItemList
                      .value[index];
                  return Notificationlist1ItemWidget(model);
                }))));
  }

  /// Common widget
  Widget _buildNineteen({
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(dynamicText1,
              style: CustomTextStyles.labelLargeMulishGray900
                  .copyWith(color: appTheme.gray900))),
      Text(dynamicText2,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.secondaryContainer))
    ]);
  }

  /// Navigates to the categoriesScreenOneContainer1Screen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.categoriesScreenOneContainer1Screen,
    );
  }
}
