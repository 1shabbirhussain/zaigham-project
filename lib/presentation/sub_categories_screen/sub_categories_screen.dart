import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/add_to_cart_screen_page.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/categories_screen_one_container_page.dart';
import 'package:kp_digital/presentation/chat_screen_page/chat_screen_page.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_bottom_bar.dart';
import 'package:kp_digital/widgets/custom_search_view.dart';

import '../sub_categories_screen/widgets/userprofile1_item_widget.dart';
import 'controller/sub_categories_controller.dart';
import 'models/userprofile1_item_model.dart';

class SubCategoriesScreen extends GetWidget<SubCategoriesController> {
  const SubCategoriesScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 18.v),
              Text("lbl_wedding_albums".tr,
                  style: CustomTextStyles.titleMediumPurple70001),
              SizedBox(height: 16.v),
              _buildUserProfile()
            ])),
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
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 14.v);
        },
        itemCount: controller
            .subCategoriesModelObj.value.userprofile1ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile1ItemModel model = controller
              .subCategoriesModelObj.value.userprofile1ItemList.value[index];
          return Userprofile1ItemWidget(model, onTapUserProfile: () {
            onTapUserProfile(context);
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

  /// Navigates to the categoriesScreenOneContainer1Screen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(AppRoutes.categoriesScreenOneContainer1Screen);
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapBellTwo() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }

  /// Navigates to the productPageScreenOneScreen when the action is triggered.
  onTapUserProfile(context) {
    Navigator.pushNamed(context, AppRoutes.productPageScreenOneScreen);
  }
}
