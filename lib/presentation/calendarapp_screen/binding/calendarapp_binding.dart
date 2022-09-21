import '../controller/calendarapp_controller.dart';
import 'package:get/get.dart';

class CalendarappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarappController());
  }
}
