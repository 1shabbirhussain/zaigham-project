import '../controller/sub_categories_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubCategoriesScreen.
///
/// This class ensures that the SubCategoriesController is created when the
/// SubCategoriesScreen is first loaded.
class SubCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubCategoriesController());
  }
}
