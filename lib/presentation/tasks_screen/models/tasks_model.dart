import 'package:get/get.dart';
import 'tasks_item_model.dart';

class TasksModel {
  RxList<TasksItemModel> tasksItemList = RxList.filled(3, TasksItemModel());
}
