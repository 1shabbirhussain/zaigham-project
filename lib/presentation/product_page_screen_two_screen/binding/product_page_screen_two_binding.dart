import '../controller/product_page_screen_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductPageScreenTwoScreen.
///
/// This class ensures that the ProductPageScreenTwoController is created when the
/// ProductPageScreenTwoScreen is first loaded.
class ProductPageScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPageScreenTwoController());
  }
}
