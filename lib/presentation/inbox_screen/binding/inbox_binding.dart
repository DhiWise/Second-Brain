import '../controller/inbox_controller.dart';
import 'package:get/get.dart';

class InboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InboxController());
  }
}
