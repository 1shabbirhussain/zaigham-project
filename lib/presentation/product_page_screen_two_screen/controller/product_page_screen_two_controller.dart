import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/product_page_screen_two_screen/models/product_page_screen_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProductPageScreenTwoScreen.
///
/// This class manages the state of the ProductPageScreenTwoScreen, including the
/// current productPageScreenTwoModelObj
class ProductPageScreenTwoController extends GetxController {
  TextEditingController sheetsController = TextEditingController();

  Rx<ProductPageScreenTwoModel> productPageScreenTwoModelObj =
      ProductPageScreenTwoModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    sheetsController.dispose();
  }
}
