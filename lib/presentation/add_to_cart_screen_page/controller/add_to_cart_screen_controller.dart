import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/add_to_cart_screen_page/models/add_to_cart_screen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddToCartScreenPage.
///
/// This class manages the state of the AddToCartScreenPage, including the
/// current addToCartScreenModelObj
class AddToCartScreenController extends GetxController {
  AddToCartScreenController(this.addToCartScreenModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<AddToCartScreenModel> addToCartScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
