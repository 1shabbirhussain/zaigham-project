import '../controller/product_page_screen_two_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
    this.onTapBtnGroup209Icon,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<ProductPageScreenTwoController>();

  VoidCallback? onTapBtnGroup209Icon;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderBL61,
        ),
        child: Container(
          height: 358.v,
          width: double.maxFinite,
          decoration: AppDecoration.gradientPurpleToPurple.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL61,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle358x375,
                height: 358.v,
                width: 375.h,
                radius: BorderRadius.vertical(
                  bottom: Radius.circular(61.h),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            onTap: () {
                              onTapBtnGroup209Icon!.call();
                            },
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftPurple70001,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBell2,
                            height: 22.v,
                            width: 18.h,
                            margin: EdgeInsets.symmetric(vertical: 11.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 20.v,
                        width: 44.h,
                        margin: EdgeInsets.only(right: 34.h),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionBlack900,
                              height: 20.v,
                              width: 44.h,
                              radius: BorderRadius.circular(
                                10.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSignal,
                                      height: 11.adaptSize,
                                      width: 11.adaptSize,
                                      margin: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 1.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_4_2".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray10001,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 135.v),
                    Container(
                      height: 134.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(61.h),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(0, 1),
                          colors: [
                            appTheme.purple400.withOpacity(0),
                            appTheme.purple70002,
                          ],
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
    );
  }
}
