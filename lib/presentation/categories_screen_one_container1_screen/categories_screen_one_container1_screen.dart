import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/add_to_cart_screen_page.dart';
import 'package:kp_digital/presentation/chat_screen_page/chat_screen_page.dart';
import 'package:kp_digital/presentation/nested_home.dart';
import 'package:kp_digital/presentation/profile_screen_page/profile_screen_page.dart';
import 'package:kp_digital/widgets/custom_bottom_bar.dart';

import 'controller/categories_screen_one_container1_controller.dart';

class CategoriesScreenOneContainer1Screen
    extends GetWidget<CategoriesScreenOneContainer1Controller> {
  const CategoriesScreenOneContainer1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
            key: Get.nestedKey(1),
            initialRoute: AppRoutes.categoriesScreenOneContainerPage,
            onGenerateRoute: (routeSetting) => GetPageRoute(
                page: () => getCurrentPage(routeSetting.name!),
                transition: Transition.noTransition)),
        bottomNavigationBar: _buildBottomBar(),
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
        return AppRoutes.profileScreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.categoriesScreenOneContainerPage:
        return ControleNavScreen();
      case AppRoutes.addToCartScreenPage:
        return AddToCartScreenPage();
      case AppRoutes.chatScreenPage:
        return ChatScreenPage();
      case AppRoutes.profileScreenPage:
        return ProfileScreenPage();
      default:
        return DefaultWidget();
    }
  }
}
