import 'package:get/get.dart';
import 'sliderfolder_item_model.dart';
import 'sliderfolder_one_item_model.dart';

class ProjectsModel {
  RxList<SliderfolderItemModel> sliderfolderItemList =
      RxList.filled(1, SliderfolderItemModel());

  RxList<SliderfolderOneItemModel> sliderfolderOneItemList =
      RxList.filled(1, SliderfolderOneItemModel());
}
