import '../controller/habits_controller.dart';
import 'package:get/get.dart';

class HabitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HabitsController());
  }
}
