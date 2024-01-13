import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/presentation/profile_screen_page/models/profile_screen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreenPage.
///
/// This class manages the state of the ProfileScreenPage, including the
/// current profileScreenModelObj
class ProfileScreenController extends GetxController {
  ProfileScreenController(this.profileScreenModelObj);

  TextEditingController orderHistoryvalueController = TextEditingController();

  Rx<ProfileScreenModel> profileScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    orderHistoryvalueController.dispose();
  }
}
