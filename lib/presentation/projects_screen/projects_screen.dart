import '../hamberger_menu_draweritem/controller/hamberger_menu_controller.dart';
import '../hamberger_menu_draweritem/hamberger_menu_draweritem.dart';
import '../projects_screen/widgets/sliderfolder_item_widget.dart';
import '../projects_screen/widgets/sliderfolder_one_item_widget.dart';
import 'controller/projects_controller.dart';
import 'models/sliderfolder_item_model.dart';
import 'models/sliderfolder_one_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProjectsScreen extends GetWidget<ProjectsController> {
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
                                                getPadding(top: 3, bottom: 1),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_projects".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium18
                                                              .copyWith())),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 111,
                                                          top: 2,
                                                          bottom: 6),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height:
                                                              getSize(10.00),
                                                          width:
                                                              getSize(10.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 6, bottom: 3),
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
                      Padding(
                          padding: getPadding(left: 16, top: 8, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 15, bottom: 18),
                                    child: Text("lbl_planned".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16
                                            .copyWith(height: 1.00))),
                                Container(
                                    margin: getMargin(left: 35, top: 16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 24, right: 23),
                                              child: Text("lbl_in_progress".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterMedium16IndigoA200
                                                      .copyWith(height: 1.00))),
                                          Container(
                                              height: getVerticalSize(2.00),
                                              width: getHorizontalSize(132.00),
                                              margin: getMargin(top: 17),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.indigoA200))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 23, top: 16, bottom: 17),
                                    child: Text("lbl_completed".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium16
                                            .copyWith(height: 1.00)))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray301)),
                      Container(
                          height: getVerticalSize(85.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(left: 16, top: 23, right: 16),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Obx(() => CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(85.00),
                                    initialPage: 0,
                                    autoPlay: true,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      controller.silderIndex.value = index;
                                    }),
                                itemCount: controller.projectsModelObj.value
                                    .sliderfolderItemList.length,
                                itemBuilder: (context, index, realIndex) {
                                  SliderfolderItemModel model = controller
                                      .projectsModelObj
                                      .value
                                      .sliderfolderItemList[index];
                                  return SliderfolderItemWidget(model,
                                      onTapImgFolder: onTapImgFolder);
                                })),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Obx(() => Container(
                                    height: getVerticalSize(12.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex.value,
                                        count: controller.projectsModelObj.value
                                            .sliderfolderItemList.length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                ColorConstant.indigoA201,
                                            dotColor: ColorConstant.indigoA201,
                                            dotHeight: getVerticalSize(12.00),
                                            dotWidth:
                                                getHorizontalSize(12.00))))))
                          ])),
                      Container(
                          height: getVerticalSize(85.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(
                              left: 16, top: 16, right: 16, bottom: 20),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Obx(() => CarouselSlider.builder(
                                options: CarouselOptions(
                                    height: getVerticalSize(85.00),
                                    initialPage: 0,
                                    autoPlay: true,
                                    viewportFraction: 1.0,
                                    enableInfiniteScroll: false,
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (index, reason) {
                                      controller.silderIndex1.value = index;
                                    }),
                                itemCount: controller.projectsModelObj.value
                                    .sliderfolderOneItemList.length,
                                itemBuilder: (context, index, realIndex) {
                                  SliderfolderOneItemModel model = controller
                                      .projectsModelObj
                                      .value
                                      .sliderfolderOneItemList[index];
                                  return SliderfolderOneItemWidget(model,
                                      onTapImgFolderOne: onTapImgFolderOne);
                                })),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Obx(() => Container(
                                    height: getVerticalSize(12.00),
                                    margin: getMargin(
                                        left: 16,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex1.value,
                                        count: controller.projectsModelObj.value
                                            .sliderfolderOneItemList.length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                ColorConstant.indigoA201,
                                            dotColor: ColorConstant.indigoA201,
                                            dotHeight: getVerticalSize(12.00),
                                            dotWidth:
                                                getHorizontalSize(12.00))))))
                          ]))
                    ]))))));
  }

  onTapImgFolderOne() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapImgFolder() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapImgMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
