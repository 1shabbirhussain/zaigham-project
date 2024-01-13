import '../controller/product_page_screen_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPageScreenOneScreen.
///
/// This class ensures that the ProductPageScreenOneController is created when the
/// ProductPageScreenOneScreen is first loaded.
class ProductPageScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPageScreenOneController());
  }
}
