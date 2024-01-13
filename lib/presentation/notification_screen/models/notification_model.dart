import '../../../core/app_export.dart';
import 'notificationlist_item_model.dart';
import 'notificationlist1_item_model.dart';

/// This class defines the variables used in the [notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationModel {
  Rx<List<NotificationlistItemModel>> notificationlistItemList = Rx([
    NotificationlistItemModel(
        title: "Group Member Notification".obs,
        date: "18/10/2023".obs,
        message:
            "Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!"
                .obs,
        timestamp: "Jan 18 2020".obs),
    NotificationlistItemModel(
        title: "Group Member Notification".obs,
        date: "9/09/2023".obs,
        message:
            "Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!"
                .obs,
        timestamp: "Jan 18 2020".obs)
  ]);

  Rx<List<Notificationlist1ItemModel>> notificationlist1ItemList = Rx([
    Notificationlist1ItemModel(
        groupMemberNotificationImage: ImageConstant.imgGroup4.obs,
        latestGroceryCollectionText: "Group Member Notification".obs,
        signInText: "5/12/2023".obs,
        slowAndSteadyText:
            "Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!"
                .obs,
        dateText: "Jan 18 2020".obs),
    Notificationlist1ItemModel(
        groupMemberNotificationImage: ImageConstant.imgGroup4.obs,
        latestGroceryCollectionText: "Group Member Notification".obs,
        signInText: "3/12/2023".obs,
        slowAndSteadyText:
            "Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!"
                .obs,
        dateText: "Jan 18 2020".obs)
  ]);
}
