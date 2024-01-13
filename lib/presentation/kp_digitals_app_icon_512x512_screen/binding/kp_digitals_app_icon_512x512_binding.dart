import '../controller/kp_digitals_app_icon_512x512_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsAppIcon512x512Screen.
///
/// This class ensures that the KpDigitalsAppIcon512x512Controller is created when the
/// KpDigitalsAppIcon512x512Screen is first loaded.
class KpDigitalsAppIcon512x512Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsAppIcon512x512Controller());
  }
}
