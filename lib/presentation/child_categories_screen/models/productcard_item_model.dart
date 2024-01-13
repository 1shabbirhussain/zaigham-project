import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.image,
    this.title,
    this.subtitle,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.img7335651);
    title = title ?? Rx("Volume - 01");
    subtitle = subtitle ?? Rx("Resolution - 300");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? subtitle;

  Rx<String>? id;
}
