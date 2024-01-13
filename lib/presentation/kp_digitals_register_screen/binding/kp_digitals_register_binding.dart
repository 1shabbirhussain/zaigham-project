import '../controller/kp_digitals_register_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsRegisterScreen.
///
/// This class ensures that the KpDigitalsRegisterController is created when the
/// KpDigitalsRegisterScreen is first loaded.
class KpDigitalsRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsRegisterController());
  }
}
