import '../../../core/app_export.dart';

/// This class is used in the [notificationlist1_item_widget] screen.
class Notificationlist1ItemModel {
  Notificationlist1ItemModel({
    this.groupMemberNotificationImage,
    this.latestGroceryCollectionText,
    this.signInText,
    this.slowAndSteadyText,
    this.dateText,
    this.id,
  }) {
    groupMemberNotificationImage =
        groupMemberNotificationImage ?? Rx(ImageConstant.imgGroup4);
    latestGroceryCollectionText =
        latestGroceryCollectionText ?? Rx("Group Member Notification");
    signInText = signInText ?? Rx("5/12/2023");
    slowAndSteadyText = slowAndSteadyText ??
        Rx("Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!");
    dateText = dateText ?? Rx("Jan 18 2020");
    id = id ?? Rx("");
  }

  Rx<String>? groupMemberNotificationImage;

  Rx<String>? latestGroceryCollectionText;

  Rx<String>? signInText;

  Rx<String>? slowAndSteadyText;

  Rx<String>? dateText;

  Rx<String>? id;
}
