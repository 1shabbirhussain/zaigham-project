import '../../../core/app_export.dart';

/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {
  ProductcardlistItemModel({
    this.title,
    this.price,
    this.shipping,
    this.availability,
    this.returnPolicy,
    this.quantity,
    this.id,
  }) {
    title =
        title ?? Rx("Ivana’s 12 Pack Christmas\nStencils Templates, Reusable");
    price = price ?? Rx("₹ 280 Rs");
    shipping = shipping ?? Rx("Eligible for Free Shipping");
    availability = availability ?? Rx("In stock");
    returnPolicy = returnPolicy ?? Rx("10 days Returnable");
    quantity = quantity ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? shipping;

  Rx<String>? availability;

  Rx<String>? returnPolicy;

  Rx<String>? quantity;

  Rx<String>? id;
}
