import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/chat_screen_page/models/chat_screen_model.dart';

/// A controller class for the ChatScreenPage.
///
/// This class manages the state of the ChatScreenPage, including the
/// current chatScreenModelObj
class ChatScreenController extends GetxController {
  ChatScreenController(this.chatScreenModelObj);

  TextEditingController senderController = TextEditingController();

  Rx<ChatScreenModel> chatScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    senderController.dispose();
  }
}
