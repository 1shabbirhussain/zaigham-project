import '../controller/sub_categories_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<SubCategoriesController>();

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
                  imagePath: userprofile1ItemModelObj.userImage!.value,
                  height: 62.adaptSize,
                  width: 62.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile1ItemModelObj.productName!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Obx(
                    () => Text(
                      userprofile1ItemModelObj.productDescription!.value,
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
