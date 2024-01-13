import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/categories_screen/models/categories_model.dart';

/// A controller class for the CategoriesScreen.
///
/// This class manages the state of the CategoriesScreen, including the
/// current categoriesModelObj
class CategoriesController extends GetxController {
  Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;
}
