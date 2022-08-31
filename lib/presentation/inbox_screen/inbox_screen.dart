import '../hamberger_menu_draweritem/controller/hamberger_menu_controller.dart';
import '../hamberger_menu_draweritem/hamberger_menu_draweritem.dart';
import '../inbox_screen/widgets/listlink_four_item_widget.dart';
import '../inbox_screen/widgets/listlink_one_item_widget.dart';
import 'controller/inbox_controller.dart';
import 'models/listlink_four_item_model.dart';
import 'models/listlink_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:secondbrain_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InboxScreen extends GetWidget<InboxController> {
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
                                                getPadding(top: 2, bottom: 3),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text("lbl_inbox".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium18
                                                          .copyWith()),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 122,
                                                          top: 3,
                                                          bottom: 3),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 1,
                                                          bottom: 1),
                                                      child: Text("lbl_new".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular16
                                                              .copyWith()))
                                                ]))
                                      ])))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.frame10016Controller,
                          hintText: "lbl_tasks".tr,
                          margin: getMargin(left: 16, top: 24, right: 16),
                          variant: TextFormFieldVariant.OutlineGray70011,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 15, bottom: 18),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgVectorBluegray5005X8)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(8.00),
                              minHeight: getVerticalSize(5.00))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.frame10017Controller,
                          hintText: "lbl_notes".tr,
                          margin: getMargin(left: 16, top: 16, right: 16),
                          variant: TextFormFieldVariant.OutlineGray70011,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 15, bottom: 18),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgVectorBluegray5005X8)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(8.00),
                              minHeight: getVerticalSize(5.00))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 16, top: 16, right: 16),
                          decoration: AppDecoration.outlineGray70011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 13, right: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_resourcers".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16IndigoA200
                                                      .copyWith()),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 5, bottom: 5),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector5X8,
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: getHorizontalSize(
                                                          8.00)))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(368.00),
                                    margin:
                                        getMargin(left: 16, top: 13, right: 12),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray301)),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 16, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 5),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgLink,
                                                  height: getVerticalSize(8.00),
                                                  width: getHorizontalSize(
                                                      16.00))),
                                          Padding(
                                              padding: getPadding(left: 9),
                                              child: Text(
                                                  "msg_how_to_brainsto".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16Black900
                                                      .copyWith()))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 1, top: 16, right: 12),
                                        child: Obx(() => ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .inboxModelObj
                                                .value
                                                .listlinkOneItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListlinkOneItemModel model =
                                                  controller.inboxModelObj.value
                                                          .listlinkOneItemList[
                                                      index];
                                              return ListlinkOneItemWidget(
                                                  model);
                                            })))),
                                Padding(
                                    padding: getPadding(
                                        left: 17, top: 25, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 5),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgLink,
                                                  height: getVerticalSize(8.00),
                                                  width: getHorizontalSize(
                                                      16.00))),
                                          Padding(
                                              padding: getPadding(left: 9),
                                              child: Text(
                                                  "msg_how_to_brainsto".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16Black900
                                                      .copyWith()))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 1,
                                            top: 16,
                                            right: 12,
                                            bottom: 16),
                                        child: Obx(() => ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .inboxModelObj
                                                .value
                                                .listlinkFourItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListlinkFourItemModel model =
                                                  controller.inboxModelObj.value
                                                          .listlinkFourItemList[
                                                      index];
                                              return ListlinkFourItemWidget(
                                                  model);
                                            }))))
                              ])),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.frame10018Controller,
                          hintText: "lbl_projects".tr,
                          margin: getMargin(left: 16, top: 16, right: 16),
                          variant: TextFormFieldVariant.OutlineGray70011,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 15, bottom: 18),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgVectorBluegray5005X8)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(8.00),
                              minHeight: getVerticalSize(5.00))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.frame10019Controller,
                          hintText: "lbl_events".tr,
                          margin: getMargin(
                              left: 16, top: 16, right: 16, bottom: 20),
                          variant: TextFormFieldVariant.OutlineGray70011,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 15, bottom: 18),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgVectorBluegray5005X8)),
                          suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(8.00),
                              minHeight: getVerticalSize(5.00)))
                    ]))))));
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
