import '../controller/notification_controller.dart';
import '../models/notificationlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';

// ignore: must_be_immutable
class Notificationlist1ItemWidget extends StatelessWidget {
  Notificationlist1ItemWidget(
    this.notificationlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Notificationlist1ItemModel notificationlist1ItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: notificationlist1ItemModelObj
                    .groupMemberNotificationImage!.value,
                height: 45.adaptSize,
                width: 45.adaptSize,
                margin: EdgeInsets.only(
                  top: 22.v,
                  bottom: 9.v,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 1.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Row(
                        children: [
                          Obx(
                            () => Text(
                              notificationlist1ItemModelObj
                                  .latestGroceryCollectionText!.value,
                              style: CustomTextStyles.titleSmallMulishGray900,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              bottom: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                notificationlist1ItemModelObj.signInText!.value,
                                style: CustomTextStyles.bodySmall_1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    SizedBox(
                      height: 51.v,
                      width: 254.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 237.h,
                              child: Obx(
                                () => Text(
                                  notificationlist1ItemModelObj
                                      .slowAndSteadyText!.value,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Obx(
                              () => Text(
                                notificationlist1ItemModelObj.dateText!.value,
                                style: CustomTextStyles
                                    .labelLargeAvenirNextGray500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
