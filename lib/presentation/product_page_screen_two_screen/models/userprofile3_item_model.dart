import '../../../core/app_export.dart';

/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {
  Userprofile3ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
