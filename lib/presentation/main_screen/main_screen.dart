import '../hamberger_menu_draweritem/controller/hamberger_menu_controller.dart';
import '../hamberger_menu_draweritem/hamberger_menu_draweritem.dart';
import '../main_screen/widgets/main_screen_item_widget.dart';
import 'controller/main_controller.dart';
import 'models/main_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MainScreen extends GetWidget<MainController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.gray50,
            drawer: HambergerMenuDraweritem(HambergerMenuController()),
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              border: Border.all(
                                                  color: ColorConstant.gray300,
                                                  width:
                                                      getHorizontalSize(1.00))),
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 24,
                                                  right: 16,
                                                  bottom: 24),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapImgMenu();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 3,
                                                                top: 6,
                                                                bottom: 4),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMenu,
                                                                height:
                                                                    getVerticalSize(
                                                                        14.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00)))),
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgIdea21,
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 3,
                                                                      bottom:
                                                                          2),
                                                              child: Text(
                                                                  "lbl_second_brain"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium18IndigoA200
                                                                      .copyWith())),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 71,
                                                                      top: 6,
                                                                      bottom:
                                                                          7),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgPlus,
                                                                  height:
                                                                      getSize(
                                                                          10.00),
                                                                  width: getSize(
                                                                      10.00))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtNew();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              4),
                                                                  child: Text(
                                                                      "lbl_new"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular16
                                                                          .copyWith())))
                                                        ])
                                                  ])))),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 24, right: 16),
                                      child: Obx(() => GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(141.00),
                                                  crossAxisCount: 2,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(16.00),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(16.00)),
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller.mainModelObj
                                              .value.mainScreenItemList.length,
                                          itemBuilder: (context, index) {
                                            MainScreenItemModel model =
                                                controller.mainModelObj.value
                                                    .mainScreenItemList[index];
                                            return MainScreenItemWidget(model);
                                          })))
                                ]))
                          ]))))),
              Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      border: Border.all(
                          color: ColorConstant.gray300,
                          width: getHorizontalSize(1.00))),
                  child: Padding(
                      padding: getPadding(top: 2, bottom: 6),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                margin: getMargin(top: 8, bottom: 9),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgMinimize,
                                              height: getSize(26.00),
                                              width: getSize(26.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 4, top: 10, right: 5),
                                          child: Text("lbl_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterSemiBold14
                                                  .copyWith()))
                                    ])),
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Container(
                                      height: getVerticalSize(2.00),
                                      width: getHorizontalSize(85.00),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigoA200)),
                                  Padding(
                                      padding: getPadding(
                                          left: 14, top: 6, right: 14),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgUser,
                                          height: getSize(26.00),
                                          width: getSize(26.00))),
                                  Padding(
                                      padding: getPadding(
                                          left: 14,
                                          top: 10,
                                          right: 14,
                                          bottom: 9),
                                      child: Text("lbl_personal".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14IndigoA200
                                              .copyWith()))
                                ])),
                            Container(
                                margin: getMargin(top: 10, bottom: 9),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 4, right: 4),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                  height:
                                                      getVerticalSize(24.00),
                                                  width: getHorizontalSize(
                                                      26.00)))),
                                      Padding(
                                          padding: getPadding(top: 11),
                                          child: Text("lbl_work".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterSemiBold14
                                                  .copyWith()))
                                    ])),
                            Container(
                                margin: getMargin(top: 8, bottom: 9),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 11, right: 11),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgFile,
                                              height: getVerticalSize(28.00),
                                              width: getHorizontalSize(26.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 8),
                                              child: Text("lbl_college".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold14
                                                      .copyWith())))
                                    ]))
                          ])))
            ])));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }

  onTapTxtNew() {
    Get.toNamed(AppRoutes.dashboadinsertScreen);
  }
}
