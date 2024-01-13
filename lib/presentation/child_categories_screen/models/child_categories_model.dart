import '../../../core/app_export.dart';
import 'productcard_item_model.dart';

/// This class defines the variables used in the [child_categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChildCategoriesModel {
  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        image: ImageConstant.img7335651.obs,
        title: "Volume - 01".obs,
        subtitle: "Resolution - 300".obs),
    ProductcardItemModel(
        image: ImageConstant.imgImage2.obs,
        title: "Volume - 02".obs,
        subtitle: "Resolution - 300".obs),
    ProductcardItemModel(
        image: ImageConstant.imgImage3.obs,
        title: "Volume - 03".obs,
        subtitle: "Crack Version".obs)
  ]);
}
