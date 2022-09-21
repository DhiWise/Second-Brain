import 'controller/hamberger_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HambergerMenuDraweritem extends StatelessWidget {
  HambergerMenuDraweritem(this.controller);

  HambergerMenuController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: double.infinity,
                  decoration: AppDecoration.fillBlack900b2,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.infinity,
                                margin: getMargin(right: 100),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16, top: 16, right: 16),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          4.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle33,
                                                                  height:
                                                                      getSize(
                                                                          32.00),
                                                                  width: getSize(
                                                                      32.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 7,
                                                                      bottom:
                                                                          6),
                                                              child: Text(
                                                                  "lbl_dhiwise"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium18
                                                                      .copyWith()))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 9, bottom: 9),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightBlack900,
                                                            height:
                                                                getVerticalSize(
                                                                    13.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    7.00)))
                                                  ]))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(328.00),
                                          margin: getMargin(top: 24),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray301)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 19, top: 29, right: 19),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 2, bottom: 8),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVector,
                                                            height:
                                                                getVerticalSize(
                                                                    8.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    10.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 11),
                                                        child: Text(
                                                            "lbl_navigation".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium16IndigoA200
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtInbox();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40),
                                                  child: Text("lbl_inbox".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtProjects();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 25,
                                                      right: 40),
                                                  child: Text("lbl_projects".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtTasks();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 20,
                                                      right: 40),
                                                  child: Text("lbl_tasks".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                     
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtHabits();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 23,
                                                      right: 40),
                                                  child: Text("lbl_habits".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtNotes();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 24,
                                                      right: 40),
                                                  child: Text("lbl_notes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtResources();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 24,
                                                      right: 40),
                                                  child: Text(
                                                      "lbl_resources".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapTxtcalendar();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 23,
                                                      right: 40),
                                                  child: Text("lbl_calendar".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium16
                                                          .copyWith(
                                                              height: 1.00))))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(328.00),
                                          margin: getMargin(top: 27),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray301)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 20, top: 27, right: 20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 2, bottom: 3),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBluegray500,
                                                            height:
                                                                getVerticalSize(
                                                                    10.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapTxtDashboards();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 12),
                                                            child: Text(
                                                                "lbl_dashboards"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterMedium16
                                                                    .copyWith(
                                                                        height:
                                                                            1.00))))
                                                  ]))),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(328.00),
                                          margin: getMargin(top: 27),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray301)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 18,
                                                  top: 235,
                                                  right: 18),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 2),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgQuestion,
                                                            height:
                                                                getSize(20.00),
                                                            width: getSize(
                                                                20.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10, top: 4),
                                                        child: Text(
                                                            "lbl_help_feedback"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium16
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 17,
                                                  top: 26,
                                                  right: 17,
                                                  bottom: 40),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 2),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSettings,
                                                            height:
                                                                getVerticalSize(
                                                                    20.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    19.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10, top: 3),
                                                        child: Text(
                                                            "lbl_settings".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium16
                                                                .copyWith(
                                                                    height:
                                                                        1.00)))
                                                  ])))
                                    ])))
                      ])))
        ]));
  }

  onTapTxtInbox() {
    Get.toNamed(AppRoutes.inboxScreen);
  }

  onTapTxtProjects() {
    Get.toNamed(AppRoutes.projectsScreen);
  }

  onTapTxtTasks() {
    Get.toNamed(AppRoutes.tasksScreen);
  }

  onTapTxtHabits() {
    Get.toNamed(AppRoutes.habitsScreen);
  }

  onTapTxtNotes() {
    Get.toNamed(AppRoutes.notesScreen);
  }

  onTapTxtResources() {
    Get.toNamed(AppRoutes.inboxScreen);
  }

  onTapTxtDashboards() {
    Get.toNamed(AppRoutes.mainScreen);
  }
  onTapTxtcalendar() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "Updated soon");
  }
}
