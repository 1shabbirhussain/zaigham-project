import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_splash_screen/models/kp_digitals_splash_model.dart';

/// A controller class for the KpDigitalsSplashScreen.
///
/// This class manages the state of the KpDigitalsSplashScreen, including the
/// current kpDigitalsSplashModelObj
class KpDigitalsSplashController extends GetxController {
  Rx<KpDigitalsSplashModel> kpDigitalsSplashModelObj =
      KpDigitalsSplashModel().obs;
}
