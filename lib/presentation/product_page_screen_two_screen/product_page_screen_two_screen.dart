import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/add_to_cart_screen_page.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/categories_screen_one_container_page.dart';
import 'package:kp_digital/presentation/chat_screen_page/chat_screen_page.dart';
import 'package:kp_digital/widgets/custom_bottom_bar.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:kp_digital/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../product_page_screen_two_screen/widgets/userprofile3_item_widget.dart';
import 'controller/product_page_screen_two_controller.dart';
import 'models/userprofile3_item_model.dart';

class ProductPageScreenTwoScreen
    extends GetWidget<ProductPageScreenTwoController> {
  const ProductPageScreenTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray10001,
        body: SizedBox(
            width: double.maxFinite,
            child: ListView(children: [
              _buildUserProfile(),
              SizedBox(height: 19.v),
              _buildProductPageScreen(),
              SizedBox(height: 5.v)
            ])),
        // bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
        height: 358.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 358.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller.productPageScreenTwoModelObj.value
                  .userprofile3ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Userprofile3ItemModel model = controller
                    .productPageScreenTwoModelObj
                    .value
                    .userprofile3ItemList
                    .value[index];
                return Userprofile3ItemWidget(model, onTapBtnGroup209Icon: () {
                  onTapBtnGroup209Icon();
                });
              })),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => Container(
                height: 8.v,
                margin: EdgeInsets.only(bottom: 23.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.productPageScreenTwoModelObj.value
                      .userprofile3ItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 7,
                    activeDotColor: appTheme.gray10001,
                    dotColor: appTheme.gray10001,
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  /// Section Widget
  Widget _buildProductPageScreen() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 11.v),
      decoration: AppDecoration.outlineGrayF
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_volume_01".tr, style: CustomTextStyles.titleLargePrimary),
          SizedBox(height: 3.v),
          Column(children: [
            SizedBox(
                height: 30.v,
                width: 275.h,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomTextFormField(
                      width: 275.h,
                      controller: controller.sheetsController,
                      hintText: "lbl_100_sheets".tr,
                      hintStyle: CustomTextStyles.labelLargeBlack900,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text("msg_price_280_rs".tr,
                          style: CustomTextStyles.labelLargeBlack900))
                ])),
            SizedBox(height: 14.v),
            Padding(
                padding: EdgeInsets.only(right: 3.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomElevatedButton(
                          height: 32.v,
                          text: "lbl_demos".tr.toUpperCase(),
                          margin: EdgeInsets.only(right: 5.h),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeGray10001)),
                  Expanded(
                      child: CustomElevatedButton(
                          height: 32.v,
                          text: "lbl_add_to_cart".tr.toUpperCase(),
                          margin: EdgeInsets.only(left: 5.h),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 6.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgCart,
                                  height: 16.v,
                                  width: 17.h)),
                          buttonStyle: CustomButtonStyles.fillPurple,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeGray10001))
                ])),
            SizedBox(height: 15.v),
            Divider(color: appTheme.gray400),
            SizedBox(height: 3.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("lbl_about".tr, style: theme.textTheme.labelLarge)),
            SizedBox(height: 5.v),
            SizedBox(
                width: 278.h,
                child: Text("msg_each_one_volume".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium)),
            SizedBox(height: 13.v),
            CustomElevatedButton(
                text: "lbl_buy_now".tr.toUpperCase(),
                leftIcon: Container(
                    margin: EdgeInsets.only(right: 12.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgBag,
                        height: 23.v,
                        width: 19.h)),
                buttonTextStyle: CustomTextStyles.titleMediumGray10001,
                onPressed: () {
                  onTapBuyNow();
                })
          ]),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.categoriesScreenOneContainerPage;
      case BottomBarEnum.Cart:
        return AppRoutes.addToCartScreenPage;
      case BottomBarEnum.User:
        return AppRoutes.chatScreenPage;
      case BottomBarEnum.Lockonprimary:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.categoriesScreenOneContainerPage:
        return CategoriesScreenOneContainerPage();
      case AppRoutes.addToCartScreenPage:
        return AddToCartScreenPage();
      case AppRoutes.chatScreenPage:
        return ChatScreenPage();
      default:
        return DefaultWidget();
    }
  }

  onTapBuyNow() {
    Get.toNamed(AppRoutes.categoriesScreenOneContainer1Screen);
    Get.toNamed(getCurrentRoute(BottomBarEnum.Cart), id: 1);
  }

  /// Navigates to the childCategoriesScreen when the action is triggered.
  onTapBtnGroup209Icon() {
    Get.toNamed(
      AppRoutes.childCategoriesScreen,
    );
  }
}
