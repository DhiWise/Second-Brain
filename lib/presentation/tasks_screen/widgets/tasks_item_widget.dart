import '../controller/tasks_controller.dart';
import '../models/tasks_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore: must_be_immutable
class TasksItemWidget extends StatelessWidget {
  TasksItemWidget(this.tasksItemModelObj);

  TasksItemModel tasksItemModelObj;

  var controller = Get.find<TasksController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              bottom: 11,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
            margin: getMargin(
              left: 11,
              top: 12,
              bottom: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    tasksItemModelObj.designwebsiteTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 8,
                    right: 0,
                  ),
                  child: Obx(
                    () => Text(
                      tasksItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: AppStyle.txtInterMedium12WhiteA700.copyWith(),
                        ),
                  ),
                ),
              ],
            ),
          ),
              ],
            ),
          ),
       
        ],
      ),
    );
  }
}
