import '../../core/constants/TaskConstant.dart';
import 'controller/insert_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:secondbrain_app/widgets/custom_button.dart';
import 'package:secondbrain_app/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:secondbrain_app/data/models/pages/post_pages_req.dart' as page;

class InsertScreen extends GetWidget<InsertController> {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(
                                  left: 114.5, top: 50, right: 114.5),
                              child: Text("lbl_second_brain".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtInterSemiBold24
                                      .copyWith(height: 1.67)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 50, right: 16),
                              child: Text("lbl_insert".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold32.copyWith()))),
                    
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 32, right: 16),
                              child: Text("lbl_tasks".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16
                                      .copyWith(height: 1.63)))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.inputFieldController1,
                          hintText: "Enter new Task".tr,
                          margin: getMargin(left: 16, top: 8, right: 16),
                          alignment: Alignment.center),
                                                            Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 32, right: 16),
                              child: Text("lbl_date".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16
                                      .copyWith(height: 1.63)))),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.inputField1Controller1,
                          hintText: "Enter Date(dd/mm/yyyy)".tr,
                          margin: getMargin(left: 16, top: 8, right: 16),
                          alignment: Alignment.center),

                      CustomButton(
                          width: 396,
                          text: "Add Task".tr,
                          margin: getMargin(left: 16, top: 24, right: 16),
                          onTap: onTapBtnLogin2,
                          alignment: Alignment.center),
                    ]))))));
  }
  void onTapBtnLogin2() {
      page.PostPagesReq postPagesReq = page.PostPagesReq(
        parent: page.Parent(
          databaseId: TaskConstant.database,
        ),
        properties: page.Properties(
          task: page.Task(
            richText: [
              page.RichText(
                text: page.Text(
                  content: controller.inputFieldController1.text,
                ),
              )
            ],
          ),
          date: page.Date(
            richText: [
              page.RichText(
                text: page.Text(
                  content: controller.inputField1Controller1.text,
                ),
              )
            ],
          ),
        ),
      );
      controller.callCreatePages(
        postPagesReq.toJson(),
        successCall: _onCreatePagesSuccess,
        errCall: _onCreatePagesError,
      );
  }

  void _onCreatePagesSuccess() {
    Get.offAllNamed(AppRoutes.tasksScreen);
    // Fluttertoast.showToast(
    //   msg: "successfully added",
    // );
  }

  void _onCreatePagesError() {}
}
