import '../controller/child_categories_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<ChildCategoriesController>();

  VoidCallback? onTapProductCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCard!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
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
                  imagePath: productcardItemModelObj.image!.value,
                  height: 62.adaptSize,
                  width: 62.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 9.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      productcardItemModelObj.title!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Obx(
                    () => Text(
                      productcardItemModelObj.subtitle!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomOutlinedButton(
                    width: 137.h,
                    text: "msg_price_100_rs".tr,
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
