import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_login_screen/models/kp_digitals_login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the KpDigitalsLoginScreen.
///
/// This class manages the state of the KpDigitalsLoginScreen, including the
/// current kpDigitalsLoginModelObj
class KpDigitalsLoginController extends GetxController {
  TextEditingController usernamevalueController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<KpDigitalsLoginModel> kpDigitalsLoginModelObj = KpDigitalsLoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> keepMeLoggedIn = false.obs;

  @override
  void onClose() {
    super.onClose();
    usernamevalueController.dispose();
    passwordController.dispose();
  }
}
