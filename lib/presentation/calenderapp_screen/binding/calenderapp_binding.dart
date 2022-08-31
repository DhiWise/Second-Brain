import '../controller/calenderapp_controller.dart';
import 'package:get/get.dart';

class CalenderappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalenderappController());
  }
}
