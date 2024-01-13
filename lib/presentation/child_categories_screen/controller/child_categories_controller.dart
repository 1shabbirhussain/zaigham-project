import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/child_categories_screen/models/child_categories_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChildCategoriesScreen.
///
/// This class manages the state of the ChildCategoriesScreen, including the
/// current childCategoriesModelObj
class ChildCategoriesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ChildCategoriesModel> childCategoriesModelObj = ChildCategoriesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
