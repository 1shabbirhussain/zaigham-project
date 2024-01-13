import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen/models/kp_digitals_register_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KpDigitalsRegisterScreen.
///
/// This class manages the state of the KpDigitalsRegisterScreen, including the
/// current kpDigitalsRegisterModelObj
class KpDigitalsRegisterController extends GetxController {
  TextEditingController nameValueController = TextEditingController();

  TextEditingController phoneValueController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<KpDigitalsRegisterModel> kpDigitalsRegisterModelObj =
      KpDigitalsRegisterModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameValueController.dispose();
    phoneValueController.dispose();
    emailController.dispose();
  }
}
