import '../controller/kp_digitals_register_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsRegisterScreenOneScreen.
///
/// This class ensures that the KpDigitalsRegisterScreenOneController is created when the
/// KpDigitalsRegisterScreenOneScreen is first loaded.
class KpDigitalsRegisterScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsRegisterScreenOneController());
  }
}
