import '../controller/kp_digitals_splash_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsSplashScreen.
///
/// This class ensures that the KpDigitalsSplashController is created when the
/// KpDigitalsSplashScreen is first loaded.
class KpDigitalsSplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsSplashController());
  }
}
