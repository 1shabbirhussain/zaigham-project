import '../child_categories_screen/widgets/productcard_item_widget.dart';
import 'controller/child_categories_controller.dart';
import 'models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/add_to_cart_screen_page.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/categories_screen_one_container_page.dart';
import 'package:kp_digital/presentation/chat_screen_page/chat_screen_page.dart';
import 'package:kp_digital/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_bottom_bar.dart';
import 'package:kp_digital/widgets/custom_search_view.dart';

class ChildCategoriesScreen extends GetWidget<ChildCategoriesController> {
  const ChildCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 19.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_welcome_jhon_doe".tr,
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 9.v),
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr),
                  SizedBox(height: 16.v),
                  Text("lbl_size_12_362".tr,
                      style: CustomTextStyles.titleMediumPurple70001),
                  SizedBox(height: 18.v),
                  _buildProductCard()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 74.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 3.v),
            onTap: () {
              onTapIconButton();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgBell2,
              margin: EdgeInsets.symmetric(horizontal: 31.h, vertical: 14.v),
              onTap: () {
                onTapBellTwo();
              })
        ]);
  }

  /// Section Widget
  Widget _buildProductCard() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 14.v);
        },
        itemCount: controller
            .childCategoriesModelObj.value.productcardItemList.value.length,
        itemBuilder: (context, index) {
          ProductcardItemModel model = controller
              .childCategoriesModelObj.value.productcardItemList.value[index];
          return ProductcardItemWidget(model, onTapProductCard: () {
            onTapProductCard();
          });
        }));
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

  /// Navigates to the subCategoriesScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(AppRoutes.subCategoriesScreen);
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapBellTwo() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }

  /// Navigates to the productPageScreenTwoScreen when the action is triggered.
  onTapProductCard() {
    Get.toNamed(
      AppRoutes.productPageScreenTwoScreen,
    );
  }
}
