import '../controller/insert_controller.dart';
import 'package:get/get.dart';

class InsertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsertController());
  }
}
