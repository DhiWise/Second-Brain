import 'package:get/get.dart';
import 'main_screen_item_model.dart';

class MainModel {
  RxList<MainScreenItemModel> mainScreenItemList =
      RxList.filled(4, MainScreenItemModel());
}
