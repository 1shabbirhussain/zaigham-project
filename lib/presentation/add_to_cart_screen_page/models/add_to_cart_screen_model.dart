import '../../../core/app_export.dart';
import 'productcardlist_item_model.dart';

/// This class defines the variables used in the [add_to_cart_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AddToCartScreenModel {
  Rx<List<ProductcardlistItemModel>> productcardlistItemList = Rx([
    ProductcardlistItemModel(
        title: "Ivana’s 12 Pack Christmas\nStencils Templates, Reusable".obs,
        price: "₹ 280 Rs".obs,
        shipping: "Eligible for Free Shipping".obs,
        availability: "In stock".obs,
        returnPolicy: "10 days Returnable".obs,
        quantity: "1".obs),
    ProductcardlistItemModel(
        title: "Ivana’s 12 Pack Christmas\nStencils Templates, Reusable".obs,
        price: "₹ 280 Rs".obs,
        shipping: "Eligible for Free Shipping".obs,
        availability: "In stock".obs,
        returnPolicy: "10 days Returnable".obs,
        quantity: "1".obs)
  ]);
}
