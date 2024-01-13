import '../controller/kp_digitals_login_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsLoginScreen.
///
/// This class ensures that the KpDigitalsLoginController is created when the
/// KpDigitalsLoginScreen is first loaded.
class KpDigitalsLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsLoginController());
  }
}
