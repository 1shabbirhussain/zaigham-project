import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/kp_digitals_app_icon_512x512_screen/models/kp_digitals_app_icon_512x512_model.dart';

/// A controller class for the KpDigitalsAppIcon512x512Screen.
///
/// This class manages the state of the KpDigitalsAppIcon512x512Screen, including the
/// current kpDigitalsAppIcon512x512ModelObj
class KpDigitalsAppIcon512x512Controller extends GetxController {
  Rx<KpDigitalsAppIcon512x512Model> kpDigitalsAppIcon512x512ModelObj =
      KpDigitalsAppIcon512x512Model().obs;
}
