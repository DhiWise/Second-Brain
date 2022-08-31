import '../controller/dashboadinsert_controller.dart';
import 'package:get/get.dart';

class DashboadinsertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboadinsertController());
  }
}
