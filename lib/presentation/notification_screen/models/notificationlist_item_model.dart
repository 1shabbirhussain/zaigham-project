import '../../../core/app_export.dart';

/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {
  NotificationlistItemModel({
    this.title,
    this.date,
    this.message,
    this.timestamp,
    this.id,
  }) {
    title = title ?? Rx("Group Member Notification");
    date = date ?? Rx("18/10/2023");
    message = message ??
        Rx("Slow and steady wins nothing! \nThat”s why we delivered your order in 17 minutes. Enjoy!");
    timestamp = timestamp ?? Rx("Jan 18 2020");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? date;

  Rx<String>? message;

  Rx<String>? timestamp;

  Rx<String>? id;
}
