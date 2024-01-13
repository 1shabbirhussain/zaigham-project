import '../controller/kp_digitals_splash_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the KpDigitalsSplashScreenOneScreen.
///
/// This class ensures that the KpDigitalsSplashScreenOneController is created when the
/// KpDigitalsSplashScreenOneScreen is first loaded.
class KpDigitalsSplashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KpDigitalsSplashScreenOneController());
  }
}
