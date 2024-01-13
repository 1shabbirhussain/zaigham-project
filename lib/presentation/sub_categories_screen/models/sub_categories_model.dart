import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [sub_categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubCategoriesModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.img7335651.obs,
        productName: "Size 12-36".obs,
        productDescription: "Resolution - 300".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgImage2.obs,
        productName: "Size 17-24".obs,
        productDescription: "Resolution - 300".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgImage3.obs,
        productName: "Size 20-40".obs,
        productDescription: "Crack Version".obs)
  ]);
}
