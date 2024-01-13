import 'userprofile2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [product_page_screen_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductPageScreenOneModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList =
      Rx(List.generate(1, (index) => Userprofile2ItemModel()));
}
