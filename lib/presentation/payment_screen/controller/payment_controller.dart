import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/payment_screen/models/payment_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
