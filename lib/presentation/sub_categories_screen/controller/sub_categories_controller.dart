import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/sub_categories_screen/models/sub_categories_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SubCategoriesScreen.
///
/// This class manages the state of the SubCategoriesScreen, including the
/// current subCategoriesModelObj
class SubCategoriesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SubCategoriesModel> subCategoriesModelObj = SubCategoriesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
