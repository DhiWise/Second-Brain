import '../hamberger_menu_draweritem/controller/hamberger_menu_controller.dart';
import '../hamberger_menu_draweritem/hamberger_menu_draweritem.dart';
import '../tasks_screen/widgets/tasks_item_widget.dart';
import 'controller/tasks_controller.dart';
import 'models/tasks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TasksScreen extends GetWidget<TasksController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.gray50,
            drawer: HambergerMenuDraweritem(HambergerMenuController()),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700,
                                  border: Border.all(
                                      color: ColorConstant.gray300,
                                      width: getHorizontalSize(1.00))),
                              child: Padding(
                                  padding: getPadding(
                                      left: 16, top: 24, right: 16, bottom: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgMenu();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 3, top: 6, bottom: 4),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgMenu,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        18.00)))),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 2),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_tasks".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium18
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 121,
                                                          top: 2,
                                                          bottom: 4),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtNew();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 6,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_new".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterRegular16
                                                                  .copyWith())))
                                                ]))
                                      ])))),

    


                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17, top: 24, right: 17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 3),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(16.00))),
                                    Padding(
                                        padding: getPadding(left: 9, top: 3),
                                        child: Text("lbl_next_7_days".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium18
                                                .copyWith()))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 252),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller
                                  .tasksModelObj.value.tasksItemList.length,
                              itemBuilder: (context, index) {
                                TasksItemModel model = controller
                                    .tasksModelObj.value.tasksItemList[index];
                                return TasksItemWidget(model);
                              })))
                    ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }

  onTapTxtNew() {
    Get.toNamed(AppRoutes.insertScreen);
  }
}
