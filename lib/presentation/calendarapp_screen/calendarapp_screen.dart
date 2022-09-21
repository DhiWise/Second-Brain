import 'controller/calendarapp_controller.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:secondbrain_app/core/utils/validation_functions.dart';
import 'package:secondbrain_app/widgets/custom_button.dart';
import 'package:secondbrain_app/widgets/custom_text_form_field.dart';

class CalendarappScreen extends GetWidget<CalendarappController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray51,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          top: 50,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CommonImageView(
                              imagePath: ImageConstant.imgIdea21,
                              height: getSize(
                                40.00,
                              ),
                              width: getSize(
                                40.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 7,
                                bottom: 8,
                              ),
                              child: Text(
                                "lbl_second_brain".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold24.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 56,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_login".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold32.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 15,
                        right: 16,
                      ),
                      child: Text(
                        "msg_welcome_back".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular18.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 41,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_email".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular16Black900.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 396,
                      focusNode: FocusNode(),
                      controller: controller.inputFieldController,
                      hintText: "msg_enter_your_emai".tr,
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 16,
                      ),
                      alignment: Alignment.center,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 21,
                        right: 16,
                      ),
                      child: Text(
                        "lbl_password".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular16Black900.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 396,
                      focusNode: FocusNode(),
                      controller: controller.inputFieldOneController,
                      hintText: "msg_enter_your_pass".tr,
                      margin: getMargin(
                        left: 16,
                        top: 12,
                        right: 16,
                      ),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      suffix: Container(
                        margin: getMargin(
                          left: 30,
                          top: 14,
                          right: 13,
                          bottom: 14,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          16.00,
                        ),
                        minHeight: getVerticalSize(
                          13.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          top: 21,
                          right: 16,
                        ),
                        child: Text(
                          "msg_forgot_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular14IndigoA200.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      width: 396,
                      text: "lbl_log_in2".tr,
                      margin: getMargin(
                        left: 16,
                        top: 24,
                        right: 16,
                        bottom: 20,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
