import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/inbox_screen/models/inbox_model.dart';
import 'package:flutter/material.dart';

class InboxController extends GetxController {
  TextEditingController frame10016Controller = TextEditingController();

  TextEditingController frame10017Controller = TextEditingController();

  TextEditingController frame10018Controller = TextEditingController();

  TextEditingController frame10019Controller = TextEditingController();

  Rx<InboxModel> inboxModelObj = InboxModel().obs;

  @override
  void onReady() {
    super.onReady();
        Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "About Resources, task and notes");
  }

  @override
  void onClose() {
    super.onClose();
    frame10016Controller.dispose();
    frame10017Controller.dispose();
    frame10018Controller.dispose();
    frame10019Controller.dispose();
  }
}
