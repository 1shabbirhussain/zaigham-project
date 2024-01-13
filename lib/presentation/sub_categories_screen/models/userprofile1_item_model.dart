import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.productName,
    this.productDescription,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.img7335651);
    productName = productName ?? Rx("Size 12-36");
    productDescription = productDescription ?? Rx("Resolution - 300");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? productName;

  Rx<String>? productDescription;

  Rx<String>? id;
}
