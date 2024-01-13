import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.albumImage,
    this.albumTitle,
    this.albumResolution,
    this.id,
  }) {
    albumImage = albumImage ?? Rx(ImageConstant.img7335651);
    albumTitle = albumTitle ?? Rx("Album PSD Templates");
    albumResolution = albumResolution ?? Rx("Resolution - 300");
    id = id ?? Rx("");
  }

  Rx<String>? albumImage;

  Rx<String>? albumTitle;

  Rx<String>? albumResolution;

  Rx<String>? id;
}
