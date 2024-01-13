import 'userprofile3_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [product_page_screen_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductPageScreenTwoModel {
  Rx<List<Userprofile3ItemModel>> userprofile3ItemList =
      Rx(List.generate(1, (index) => Userprofile3ItemModel()));
}
