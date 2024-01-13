import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/categories_screen_one_container1_screen/models/categories_screen_one_container1_model.dart';

/// A controller class for the CategoriesScreenOneContainer1Screen.
///
/// This class manages the state of the CategoriesScreenOneContainer1Screen, including the
/// current categoriesScreenOneContainer1ModelObj
class CategoriesScreenOneContainer1Controller extends GetxController {
  Rx<CategoriesScreenOneContainer1Model> categoriesScreenOneContainer1ModelObj =
      CategoriesScreenOneContainer1Model().obs;
}
