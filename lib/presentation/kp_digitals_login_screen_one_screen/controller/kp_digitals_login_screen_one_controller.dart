import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen_one_screen/models/kp_digitals_login_screen_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KpDigitalsLoginScreenOneScreen.
///
/// This class manages the state of the KpDigitalsLoginScreenOneScreen, including the
/// current kpDigitalsLoginScreenOneModelObj
class KpDigitalsLoginScreenOneController extends GetxController {
  TextEditingController usernamevalueController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<KpDigitalsLoginScreenOneModel> kpDigitalsLoginScreenOneModelObj =
      KpDigitalsLoginScreenOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> keepMeLoggedIn = false.obs;

  @override
  void onClose() {
    super.onClose();
    usernamevalueController.dispose();
    passwordController.dispose();
  }
}
