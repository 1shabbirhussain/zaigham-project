import 'package:flutter/material.dart';
import 'package:kp_digital/core/app_export.dart';
import 'package:kp_digital/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kp_digital/widgets/app_bar/custom_app_bar.dart';
import 'package:kp_digital/widgets/custom_search_view.dart';

import '../categories_screen_one_container_page/widgets/userprofile_item_widget.dart';
import 'controller/categories_screen_one_container_controller.dart';
import 'models/categories_screen_one_container_model.dart';
import 'models/userprofile_item_model.dart';

// ignore_for_file: must_be_immutable
class CategoriesScreenOneContainerPage extends StatelessWidget {
  CategoriesScreenOneContainerPage({Key? key}) : super(key: key);

  CategoriesScreenOneContainerController controller = Get.put(
      CategoriesScreenOneContainerController(
          CategoriesScreenOneContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: ListView(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                children: [
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_welcome_jhon_doe".tr,
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 9.v),
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr),
                  SizedBox(height: 18.v),
                  Text("lbl_categories".tr,
                      style: CustomTextStyles.titleMediumPurple70001),
                  SizedBox(height: 16.v),
                  _buildUserProfile()
                ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 74.h,
      leading: IconButton(
        icon: CircleAvatar(
          backgroundColor: appTheme.purple70002,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          onTapIconButton();
        },
      ),
      // leading: AppbarLeadingIconbuttonTwo(
      //   imagePath: ImageConstant.imgTelevision,
      //   margin: EdgeInsets.only(left: 30.h, top: 3.v, bottom: 3.v),
      //   onTap: () {
      //     onTapIconButton();
      //   },
      // ),
      actions: [
        AppbarTrailingImage(
            imagePath: ImageConstant.imgBell2,
            margin: EdgeInsets.symmetric(horizontal: 31.h, vertical: 14.v),
            onTap: () {
              onTapBellTwo();
            })
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 14.v);
        },
        itemCount: controller.categoriesScreenOneContainerModelObj.value
            .userprofileItemList.value.length,
        itemBuilder: (context, index) {
          UserprofileItemModel model = controller
              .categoriesScreenOneContainerModelObj
              .value
              .userprofileItemList
              .value[index];
          return UserprofileItemWidget(model, onTapUserProfile: () {
            onTapUserProfile(context);
          });
        }));
  }

  /// Navigates to the categoriesScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(AppRoutes.categoriesScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapBellTwo() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  /// Navigates to the subCategoriesScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.subCategoriesScreen);
  }
}
