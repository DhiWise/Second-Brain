import '../controller/habits_controller.dart';
import '../models/habits_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:secondbrain_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HabitsItemWidget extends StatelessWidget {
  HabitsItemWidget(this.habitsItemModelObj);

  HabitsItemModel habitsItemModelObj;
  var controller = Get.find<HabitsController>();
  bool isChecked = true;
  Habit habit=new Habit();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 12.0,
        bottom: 12.0,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "lbl_name".tr,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.txtInterMedium16.copyWith(),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "lbl_27_03_22".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16Black900.copyWith(),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "lbl_date".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16.copyWith(),
                ),
                Text(
                  "lbl_march_25_2022".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium16Black900.copyWith(),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 0.5,
                    bottom: 0.5,
                  ),
                  child: Text(
                    "lbl_wake_up_early".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(),
                  ),
                ),
                 Checkbox(
                  checkColor: Colors.black,
                  value:isChecked,
                  onChanged: (bool? value){
                    // setState(){
                    //   isChecked=value!;
                    // }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 0.5,
                    bottom: 0.5,
                  ),
                  child: Text(
                    "lbl_drink_water".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(),
                  ),
                ),
                 Checkbox(
                  checkColor: Colors.black,
                  value:isChecked,
                  onChanged: (bool? value){
                    // setState(){
                    //   isChecked=value!;
                    // }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 0.5,
                    bottom: 0.5,
                  ),
                  child: Text(
                    "lbl_workout".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(),
                  ),
                ),
                 Checkbox(
                  checkColor: Colors.black,
                  value:isChecked,
                  onChanged: (bool? value){
                    // setState(){
                    //   isChecked=value!;
                    // }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 0.5,
                    bottom: 0.5,
                  ),
                  child: Text(
                    "lbl_meditate".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(),
                  ),
                ),
                  Checkbox(
                  checkColor: Colors.black,
                  value:isChecked,
                  onChanged: (bool? value){
                    // setState(){
                    //   isChecked=value!;
                    // }
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 0.5,
                    bottom: 0.5,
                  ),
                  child: Text(
                    "lbl_read".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium16.copyWith(),
                  ),
                ),
                Checkbox(
                  checkColor: Colors.black,
                  value:isChecked,
                  onChanged: (bool? value){
                    // setState(){
                    //   isChecked=value!;
                    // }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
  //  isChecked=true;
    // TODO: implement createState
    throw UnimplementedError();
  }
 }

