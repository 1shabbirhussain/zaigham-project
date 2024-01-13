import '../controller/notification_controller.dart';
import '../models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 45.adaptSize,
            width: 45.adaptSize,
            margin: EdgeInsets.only(
              top: 20.v,
              bottom: 15.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                top: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          notificationlistItemModelObj.title!.value,
                          style: CustomTextStyles.titleSmallMulishGray900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 21.h,
                          bottom: 2.v,
                        ),
                        child: Obx(
                          () => Text(
                            notificationlistItemModelObj.date!.value,
                            style: CustomTextStyles.bodySmall_1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    width: 229.h,
                    margin: EdgeInsets.only(right: 24.h),
                    child: Obx(
                      () => Text(
                        notificationlistItemModelObj.message!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => Text(
                        notificationlistItemModelObj.timestamp!.value,
                        style: CustomTextStyles.labelLargeAvenirNextGray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
