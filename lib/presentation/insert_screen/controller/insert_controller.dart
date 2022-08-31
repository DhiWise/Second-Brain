import '../../../core/constants/notionToken.dart';
import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/insert_screen/models/insert_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/data/models/pages/post_pages_resp.dart';
import 'package:secondbrain_app/data/apiClient/api_client.dart';

class InsertController extends GetxController {
  TextEditingController inputFieldController1 = TextEditingController();

  TextEditingController inputField1Controller1 = TextEditingController();

  Rx<InsertModel> insertModelObj = InsertModel().obs;

  PostPagesResp postPagesResp = PostPagesResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController1.dispose();
    inputField1Controller1.dispose();
  }

  void callCreatePages(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createPages(
        headers: {
          'Authorization':
              'Bearer ${NotionTokenConstant.token}',
          'Notion-Version': '2022-06-28',
        },
        onSuccess: (resp) {
          onCreatePagesSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreatePagesError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreatePagesSuccess(var response) {
    postPagesResp = PostPagesResp.fromJson(response);
  }

  void onCreatePagesError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
