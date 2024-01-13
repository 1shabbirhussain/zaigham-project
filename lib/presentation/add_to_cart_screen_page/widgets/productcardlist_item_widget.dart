import '../controller/add_to_cart_screen_controller.dart';
import '../models/productcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(
    this.productcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  var controller = Get.find<AddToCartScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckBoxWithCheckSign,
                        height: 24.v,
                        width: 26.h,
                      ),
                      SizedBox(height: 8.v),
                      Container(
                        height: 97.adaptSize,
                        width: 97.adaptSize,
                        padding: EdgeInsets.all(17.h),
                        decoration: AppDecoration.outlineGrayF.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.img7335651,
                          height: 62.adaptSize,
                          width: 62.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 171.h,
                        child: Obx(
                          () => Text(
                            productcardlistItemModelObj.title!.value,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge!.copyWith(
                              height: 1.46,
                            ),
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.price!.value,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.shipping!.value,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.availability!.value,
                          style: CustomTextStyles.labelMediumLightgreen900,
                        ),
                      ),
                      Obx(
                        () => Text(
                          productcardlistItemModelObj.returnPolicy!.value,
                          style: CustomTextStyles.labelMediumLightgreen900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              children: [
                Container(
                  width: 97.h,
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(
                        height: 25.v,
                        width: 26.h,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillOnPrimary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup66,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 4.v,
                        ),
                        child: Obx(
                          () => Text(
                            productcardlistItemModelObj.quantity!.value,
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 25.v,
                        width: 26.h,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.fillOnPrimary,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup66Copy,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 32.v,
                  width: 63.h,
                  text: "lbl_delete".tr,
                  margin: EdgeInsets.only(left: 15.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                  buttonTextStyle: CustomTextStyles.labelLargeGray10001,
                ),
                CustomElevatedButton(
                  height: 32.v,
                  width: 111.h,
                  text: "lbl_save_for_later".tr,
                  margin: EdgeInsets.only(left: 7.h),
                  buttonStyle: CustomButtonStyles.fillPurple,
                  buttonTextStyle: CustomTextStyles.labelLargeGray10001,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
