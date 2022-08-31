import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:secondbrain_app/core/utils/progress_dialog_utils.dart';
import 'package:secondbrain_app/supabase/models/me_model.dart';

class RegisterController extends GetxController {
  TextEditingController inputFieldController3 = TextEditingController();

  TextEditingController inputFieldOneController3 = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  var meModel = <MeModel>[];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController3.dispose();
    inputFieldOneController3.dispose();
    inputFieldTwoController.dispose();
  }

  Future<void> createMeDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Me')
          .insert(reqParams)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreateMeDocumentSuccess(response.data);
      } else {
        onCreateMeDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreateMeDocumentError(err.toString());
    }
  }

  void onCreateMeDocumentSuccess(dynamic response) {
    if (response != null) {
      meModel = (response as List).map((e) => MeModel.fromJson(e)).toList();
    }
    Get.offAndToNamed(AppRoutes.mainScreen);
  }

  void onCreateMeDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "Failed to Registration");
  }
}
