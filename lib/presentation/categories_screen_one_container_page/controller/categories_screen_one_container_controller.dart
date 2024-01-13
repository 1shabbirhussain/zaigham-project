import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/categories_screen_one_container_page/models/categories_screen_one_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CategoriesScreenOneContainerPage.
///
/// This class manages the state of the CategoriesScreenOneContainerPage, including the
/// current categoriesScreenOneContainerModelObj
class CategoriesScreenOneContainerController extends GetxController {
  CategoriesScreenOneContainerController(
      this.categoriesScreenOneContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<CategoriesScreenOneContainerModel> categoriesScreenOneContainerModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
