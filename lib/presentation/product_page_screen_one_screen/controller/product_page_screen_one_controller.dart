import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/product_page_screen_one_screen/models/product_page_screen_one_model.dart';

/// A controller class for the ProductPageScreenOneScreen.
///
/// This class manages the state of the ProductPageScreenOneScreen, including the
/// current productPageScreenOneModelObj
class ProductPageScreenOneController extends GetxController {
  Rx<ProductPageScreenOneModel> productPageScreenOneModelObj =
      ProductPageScreenOneModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
