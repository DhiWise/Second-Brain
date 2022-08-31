import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:secondbrain_app/core/utils/progress_dialog_utils.dart';
import 'package:secondbrain_app/supabase/models/me_model.dart';

class LoginController extends GetxController {
  TextEditingController inputFieldController1 = TextEditingController();

  TextEditingController inputFieldOneController1 = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  var meModel = MeModel();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController1.dispose();
    inputFieldOneController1.dispose();
  }

  Future<void> fetchMeCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Me')
          .select()
          .eq('Email', inputFieldController1.text)
          .eq('Password', inputFieldOneController1.text)
          .single()
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchMeCollectionSuccess(response.data);
      } else {
        onFetchMeCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchMeCollectionError(err.toString());
    }
  }

  void onFetchMeCollectionSuccess(dynamic response) {
    if (response != null) {
      meModel = MeModel.fromJson(response);
      if (meModel != null) {}
    }
    Get.offAndToNamed(AppRoutes.mainScreen);
  }

  void onFetchMeCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "Failed to Login");
  }
}
