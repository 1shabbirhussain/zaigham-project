import '../controller/categories_screen_one_container_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<CategoriesScreenOneContainerController>();

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.outlineGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 97.adaptSize,
              width: 97.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.all(17.h),
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: userprofileItemModelObj.albumImage!.value,
                  height: 62.adaptSize,
                  width: 62.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofileItemModelObj.albumTitle!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Obx(
                    () => Text(
                      userprofileItemModelObj.albumResolution!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomOutlinedButton(
                    width: 182.h,
                    text: "msg_update_every_week".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
