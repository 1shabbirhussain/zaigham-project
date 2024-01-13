import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/add_to_cart_screen_page.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/categories_screen_one_container_page.dart';
import 'package:kp_digital/presentation/chat_screen_page/chat_screen_page.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_bottom_bar.dart';
import 'package:kp_digital/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../product_page_screen_one_screen/widgets/userprofile2_item_widget.dart';
import 'controller/product_page_screen_one_controller.dart';
import 'models/userprofile2_item_model.dart';

class ProductPageScreenOneScreen
    extends GetWidget<ProductPageScreenOneController> {
  const ProductPageScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildUserProfileStack(),
              SizedBox(height: 19.v),
              _buildShopNowColumn(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(),
      ),
    );
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
              onTapBellTwo();
            })
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileStack() {
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
              itemCount: controller.productPageScreenOneModelObj.value
                  .userprofile2ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Userprofile2ItemModel model = controller
                    .productPageScreenOneModelObj
                    .value
                    .userprofile2ItemList
                    .value[index];
                return Userprofile2ItemWidget(model);
              })),
          Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() => Container(
                  height: 8.v,
                  margin: EdgeInsets.only(bottom: 23.v),
                  child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.productPageScreenOneModelObj.value
                          .userprofile2ItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 7,
                          activeDotColor: appTheme.gray10001,
                          dotColor: appTheme.gray10001,
                          dotHeight: 8.v,
                          dotWidth: 8.h)))))
        ]));
  }

  /// Section Widget
  Widget _buildShopNowColumn(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
      decoration: AppDecoration.outlineGrayF
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 256.h,
              margin: EdgeInsets.only(right: 22.h),
              child: Text("msg_upto_40_off_extra".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeBlack900)),
          SizedBox(height: 7.v),
          Divider(color: appTheme.gray400),
          SizedBox(height: 6.v),
          Text("msg_expires_on_31_dec".tr,
              style: CustomTextStyles.labelLargePurple7000212),
          SizedBox(height: 4.v),
          Text("lbl_offers_details".tr,
              style: CustomTextStyles.labelLargePurple7000212),
          SizedBox(height: 17.v),
          CustomElevatedButton(
            text: "lbl_shop_now".tr.toUpperCase(),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 16.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBag,
                    height: 23.v,
                    width: 19.h)),
            buttonTextStyle: CustomTextStyles.titleMediumGray10001,
            onPressed: () {
              Navigator.pushNamed(
                  context, AppRoutes.productPageScreenTwoScreen);
              // Get.toNamed(AppRoutes.categoriesScreenOneContainer1Screen);
              // Get.toNamed(getCurrentRoute(BottomBarEnum.Cart), id: 1);
            },
          ),
          SizedBox(height: 7.v)
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

  /// Navigates to the previous screen.
  onTapIconButton() {
    Get.back();
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapBellTwo() {
    Get.toNamed(
      AppRoutes.categoriesScreen,
    );
  }

  // onTapShopNow() {
  //   Get.offAllNamed(AppRoutes.addToCartScreenPage);
  // }
}
