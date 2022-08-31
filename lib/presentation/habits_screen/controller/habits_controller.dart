import '../../../core/constants/notionToken.dart';
import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/habits_screen/models/habits_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/data/models/search/post_search_resp.dart';
import 'package:secondbrain_app/data/apiClient/api_client.dart';
import 'package:secondbrain_app/data/models/search/post_search_req.dart';
import 'package:secondbrain_app/core/constants/HabitConstant.dart';
import 'package:secondbrain_app/data/models/query/post_query_resp.dart';
import 'package:secondbrain_app/data/models/aooH/get_aoo_h_resp.dart';

class HabitsController extends GetxController {
  Rx<HabitsModel> habitsModelObj = HabitsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  PostSearchResp postSearchResp = PostSearchResp();
  PostQueryResp postQueryResp = PostQueryResp();
  GetAooHResp getAooHResp = GetAooHResp();
  Habit habit = new Habit();
  @override
  void onReady() {
    super.onReady();
    PostSearchReq postSearchReq = PostSearchReq(
      query: HabitConstant.query,
    );
    this.callCreateSearch(
      postSearchReq.toJson(),
      successCall: _onCreateSearchSuccess,
      errCall: _onCreateSearchError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    habitsModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    habitsModelObj.value.dropdownItemList.refresh();
  }

  void callCreateSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSearch(
        headers: {
          'Content-type': 'application/json',
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
    Get.find<PrefUtils>().setHabitDB(postSearchResp.results!);
  }

  void callCreateQuery(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createQuery(
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

  void _onCreateSearchError() {}

  dynamic callFetchAooH(
      {VoidCallback? successCall,
      VoidCallback? errCall,
      dynamic pageId,
      dynamic wakeEarly,
      dynamic drinkWater,
      dynamic workout,
      dynamic meditate,
      dynamic read}) async {
    var array = [];
    dynamic obj = {};
    int count=1;
    dynamic response = [];
    array.add(wakeEarly);
    array.add(drinkWater);
    array.add(workout);
    array.add(meditate);
    array.add(read);

    for (final index in array) {
      response.add(Get.find<ApiClient>().fetchAooH(
          headers: {
            'Authorization':
                'Bearer ${NotionTokenConstant.token}',
            'Notion-Version': '2022-06-28',
          },
          onSuccess: (resp) {
            onFetchAooHSuccess(resp,count);
            count++;
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
          propertyId: index));
    }
    return response;
  }

  void onFetchAooHSuccess(var response,var count) {
    getAooHResp = GetAooHResp.fromJson(response);
    if(count==1) habit.wakeEarly=getAooHResp.checkbox;
    if(count==2) habit.drinkWater=getAooHResp.checkbox;
    if(count==3) habit.workout=getAooHResp.checkbox;
    if(count==4) habit.meditate=getAooHResp.checkbox;
    if(count==5) habit.read=getAooHResp.checkbox;

   // Get.toNamed(AppRoutes.habitsScreen);
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
}

class Habit{
  dynamic wakeEarly=false;
  dynamic drinkWater=false;
  dynamic workout=false;
  dynamic meditate=false;
  dynamic read=false;

  setHabitMethods(
    bool wakeEarly, bool drinkWater, bool workout, bool meditate, bool read) {
    this.wakeEarly = wakeEarly;
    this.drinkWater = drinkWater;
    this.workout = workout;
    this.meditate = meditate;
    this.read = read;
  }
}
