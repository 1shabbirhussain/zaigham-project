import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen_one_screen/models/kp_digitals_splash_screen_one_model.dart';

/// A controller class for the KpDigitalsSplashScreenOneScreen.
///
/// This class manages the state of the KpDigitalsSplashScreenOneScreen, including the
/// current kpDigitalsSplashScreenOneModelObj
class KpDigitalsSplashScreenOneController extends GetxController {
  Rx<KpDigitalsSplashScreenOneModel> kpDigitalsSplashScreenOneModelObj =
      KpDigitalsSplashScreenOneModel().obs;
}
