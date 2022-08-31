import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/calenderapp_screen/models/calenderapp_model.dart';
import 'package:flutter/material.dart';

class CalenderappController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  Rx<CalenderappModel> calenderappModelObj = CalenderappModel().obs;

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
