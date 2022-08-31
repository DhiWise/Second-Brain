import '/core/app_export.dart';
import 'package:secondbrain_app/presentation/projects_screen/models/projects_model.dart';

class ProjectsController extends GetxController {
  Rx<ProjectsModel> projectsModelObj = ProjectsModel().obs;

  Rx<int> silderIndex = 0.obs;

  Rx<int> silderIndex1 = 0.obs;

  @override
  void onReady() {
    super.onReady();
     Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Alert",
        middleText: "Updated Soon");
  }

  @override
  void onClose() {
    super.onClose();
  }
}
