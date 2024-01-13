import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
