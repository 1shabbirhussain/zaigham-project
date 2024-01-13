import '../controller/child_categories_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChildCategoriesScreen.
///
/// This class ensures that the ChildCategoriesController is created when the
/// ChildCategoriesScreen is first loaded.
class ChildCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChildCategoriesController());
  }
}
