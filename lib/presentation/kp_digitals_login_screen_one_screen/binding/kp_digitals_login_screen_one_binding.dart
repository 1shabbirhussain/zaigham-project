import '../controller/kp_digitals_login_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsLoginScreenOneScreen.
///
/// This class ensures that the KpDigitalsLoginScreenOneController is created when the
/// KpDigitalsLoginScreenOneScreen is first loaded.
class KpDigitalsLoginScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsLoginScreenOneController());
  }
}
