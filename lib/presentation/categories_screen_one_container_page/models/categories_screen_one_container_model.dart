import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [categories_screen_one_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesScreenOneContainerModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        albumImage: ImageConstant.img7335651.obs,
        albumTitle: "Album PSD Templates".obs,
        albumResolution: "Resolution - 300".obs),
    UserprofileItemModel(
        albumImage: ImageConstant.imgImage2.obs,
        albumTitle: "Album PSD Templates".obs,
        albumResolution: "Resolution - 300".obs),
    UserprofileItemModel(
        albumImage: ImageConstant.imgImage3.obs,
        albumTitle: "Video Editing Software".obs,
        albumResolution: "Crack Version".obs),
    UserprofileItemModel(
        albumImage: ImageConstant.imgImage270x70.obs,
        albumTitle: "Video Editing Projects".obs,
        albumResolution: "Resolution - 300".obs)
  ]);
}
