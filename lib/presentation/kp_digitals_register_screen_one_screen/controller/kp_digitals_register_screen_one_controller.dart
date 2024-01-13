import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_register_screen_one_screen/models/kp_digitals_register_screen_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KpDigitalsRegisterScreenOneScreen.
///
/// This class manages the state of the KpDigitalsRegisterScreenOneScreen, including the
/// current kpDigitalsRegisterScreenOneModelObj
class KpDigitalsRegisterScreenOneController extends GetxController {
  TextEditingController nameValueController = TextEditingController();

  TextEditingController phoneValueController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<KpDigitalsRegisterScreenOneModel> kpDigitalsRegisterScreenOneModelObj =
      KpDigitalsRegisterScreenOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameValueController.dispose();
    phoneValueController.dispose();
    emailController.dispose();
  }
}
