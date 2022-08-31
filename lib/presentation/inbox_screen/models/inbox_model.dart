import 'package:get/get.dart';
import 'listlink_one_item_model.dart';
import 'listlink_four_item_model.dart';

class InboxModel {
  RxList<ListlinkOneItemModel> listlinkOneItemList =
      RxList.filled(2, ListlinkOneItemModel());

  RxList<ListlinkFourItemModel> listlinkFourItemList =
      RxList.filled(2, ListlinkFourItemModel());
}
