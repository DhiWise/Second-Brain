import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/calendarapp_screen/models/calendarapp_model.dart';
import 'package:flutter/material.dart';

class CalendarappController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  Rx<CalendarappModel> calendarappModelObj = CalendarappModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
  }
}
