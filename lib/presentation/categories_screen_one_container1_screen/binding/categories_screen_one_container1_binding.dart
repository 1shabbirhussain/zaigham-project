import '../controller/categories_screen_one_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoriesScreenOneContainer1Screen.
///
/// This class ensures that the CategoriesScreenOneContainer1Controller is created when the
/// CategoriesScreenOneContainer1Screen is first loaded.
class CategoriesScreenOneContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesScreenOneContainer1Controller());
  }
}
