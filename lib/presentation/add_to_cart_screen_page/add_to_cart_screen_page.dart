import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_search_view.dart';

import '../add_to_cart_screen_page/widgets/productcardlist_item_widget.dart';
import 'controller/add_to_cart_screen_controller.dart';
import 'models/add_to_cart_screen_model.dart';
import 'models/productcardlist_item_model.dart';

// ignore_for_file: must_be_immutable
class AddToCartScreenPage extends StatelessWidget {
  AddToCartScreenPage({Key? key}) : super(key: key);

  AddToCartScreenController controller =
      Get.put(AddToCartScreenController(AddToCartScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                children: [
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("msg_welcome_jhon_doe".tr,
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 9.v),
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("msg_sub_total_1098".tr,
                          style: CustomTextStyles.titleMediumPurple70001)),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 49.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                margin: EdgeInsets.only(bottom: 18.v)),
                            Expanded(
                                child: Container(
                                    width: 238.h,
                                    margin: EdgeInsets.only(left: 9.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "msg_part_of_your_order2".tr,
                                              style: CustomTextStyles
                                                  .labelMediumPurple70002),
                                          TextSpan(
                                              text: "msg_select_this_option".tr,
                                              style:
                                                  theme.textTheme.labelMedium),
                                          TextSpan(
                                              text: "lbl_details".tr,
                                              style: CustomTextStyles
                                                  .labelMediumPrimary)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                      text: "msg_proceed_to_buy_2".tr.toUpperCase(),
                      onPressed: () {
                        onTapProceedToBuy2Items();
                      }),
                  SizedBox(height: 14.v),
                  _buildProductCardList()
                ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 74.h,
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
      // leading: AppbarLeadingIconbuttonTwo(
      //   imagePath: ImageConstant.imgTelevision,
      //   margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 3.v),
      //   onTap: () {
      //     onTapIconButton();
      //   },
      // ),
      actions: [
        AppbarTrailingImage(
            imagePath: ImageConstant.imgBell2,
            margin: EdgeInsets.symmetric(horizontal: 31.h, vertical: 14.v),
            onTap: () {
              Get.toNamed(AppRoutes.notificationScreen);
            })
      ],
    );
  }

  /// Section Widget
  Widget _buildProductCardList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 14.v);
        },
        itemCount: controller
            .addToCartScreenModelObj.value.productcardlistItemList.value.length,
        itemBuilder: (context, index) {
          ProductcardlistItemModel model = controller.addToCartScreenModelObj
              .value.productcardlistItemList.value[index];
          return ProductcardlistItemWidget(model);
        }));
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapProceedToBuy2Items() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }
}
