import '../../../core/constants/notionToken.dart';
import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/dashboadinsert_screen/models/dashboadinsert_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/data/models/pages/post_pages_resp.dart';
import 'package:secondbrain_app/data/apiClient/api_client.dart';
import 'package:secondbrain_app/data/models/task/post_query_resp.dart';
import 'package:secondbrain_app/data/models/task/post_query_req.dart';
import 'package:secondbrain_app/data/models/aooH_note/get_aoo_h_resp.dart';
import 'package:secondbrain_app/presentation/dashboadinsert_screen/models/dashboadinsert_item_model.dart';
import 'package:secondbrain_app/data/models/search/post_search_resp.dart';

class DashboadinsertController extends GetxController {
  TextEditingController inputFieldController4 = TextEditingController();

  TextEditingController inputFieldController5 = TextEditingController();

  Rx<DashboadinsertModel> dashboadinsertModelObj = DashboadinsertModel().obs;

  PostPagesResp postPagesResp = PostPagesResp();
  SelectionPopupModel? selectedDropDownValue;

  PostSearchResp postSearchResp = PostSearchResp();

  PostQueryResp postQueryResp = PostQueryResp();
  GetAooHResp getAooHResp = GetAooHResp();  
  var propertyArray=[];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController4.dispose();
    inputFieldController5.dispose();
  }
  void callCreateSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSearch(
        headers: {
          'Authorization':
              'Bearer ${NotionTokenConstant.token}',
          'Notion-Version': '2022-06-28',
        },
        onSuccess: (resp) {
          onCreateSearchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSearchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateSearchSuccess(var response) {
    postSearchResp = PostSearchResp.fromJson(response);
  }

  void onCreateSearchError(var err) {
    if (err is NoInternetException) {
      // Get.rawSnackbar(
      //   messageText: Text(
      //     '$err',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // );
    }
  }

  void _onCreateSearchSuccess() {
    Get.find<PrefUtils>().setNotesDB(postSearchResp.results!);
    PostQueryReq postQueryReq = PostQueryReq();
    this.callCreateQuery(
      postQueryReq.toJson(),
      successCall: _onCreateQuerySuccess,
      errCall: _onCreateQueryError,
    );
  }

  void callCreateQuery(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createNoteQuery(
        headers: {
          'Authorization':
              'Bearer ${NotionTokenConstant.token}',
          'Notion-Version': '2022-06-28',
        },
        onSuccess: (resp) {

          onCreateQuerySuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateQueryError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateQuerySuccess(var response) {
    postQueryResp = PostQueryResp.fromJson(response);
  }

  void onCreateQueryError(var err) {
    if (err is NoInternetException) {
      // Get.rawSnackbar(
      //   messageText: Text(
      //     '$err',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // );
    }
  }

  void _onCreateQuerySuccess() {
    Get.find<PrefUtils>().setTaskDBProperty(postQueryResp.results!);
    var results= Get.find<PrefUtils>().getTaskDBProperty();
    for(var index in results!){

      this.callFetchAooH(
      successCall: _onFetchAooHSuccess,
      errCall: _onFetchAooHError,
      pageId:index.id,
      noteId:index.properties!.task!.id,
      date:index.properties!.date!.id,
      flag:results.length == index ?true : false
    );
    }
      
  }
  void callFetchAooH({VoidCallback? successCall, VoidCallback? errCall,dynamic pageId, dynamic noteId,dynamic date,dynamic flag}) async {
    return Get.find<ApiClient>().fetchNotesAooH(
        headers: {
          'Authorization':
              'Bearer ${NotionTokenConstant.token}',
          'Notion-Version': '2022-06-28',
        },
        onSuccess: (resp) {
          onFetchAooHSuccess(resp,flag);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchAooHError(err);
          if (errCall != null) {
            errCall();
          }
        },
        pageId: pageId,
        noteId: noteId,date: date);
      
  }

  void onFetchAooHSuccess(var response,var flag) {
    getAooHResp = GetAooHResp.fromJson(response);   
    propertyArray.add(getAooHResp);
   List<DashboadinsertItemModel> notePropertyList= [];
   for(var i in propertyArray){
     for(var index in i.results!){
      var noteProperty=DashboadinsertItemModel();
      noteProperty.designwebsiteTxt.value= index.richText!.plainText != null ? index.richText!.plainText!.toString() : "";
      notePropertyList.add(noteProperty);

    }
   }
   
  dashboadinsertModelObj.value.tasksItemList.value= notePropertyList;  

  }

  void onFetchAooHError(var err) {
    if (err is NoInternetException) {
      // Get.rawSnackbar(
      //   messageText: Text(
      //     '$err',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // );
    }
  }
  void _onCreateQueryError() {}
  void _onCreateSearchError() {}

  void _onFetchAooHSuccess() {}
  void _onFetchAooHError() {}

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
      // Get.rawSnackbar(
      //   messageText: Text(
      //     '$err',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // );
    }
  }
}
