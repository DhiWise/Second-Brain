import '../controller/notes_controller.dart';
import 'package:get/get.dart';

class NotesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotesController());
  }
}
