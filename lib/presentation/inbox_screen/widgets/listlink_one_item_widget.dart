import '../controller/inbox_controller.dart';
import '../models/listlink_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore: must_be_immutable
class ListlinkOneItemWidget extends StatelessWidget {
  ListlinkOneItemWidget(this.listlinkOneItemModelObj);

  ListlinkOneItemModel listlinkOneItemModelObj;

  var controller = Get.find<InboxController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          right: 15.790001,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 1,
                top: 2,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgLink13X13,
                      height: getSize(
                        13.00,
                      ),
                      width: getSize(
                        13.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 13,
                      top: 1,
                    ),
                    child: Text(
                      "msg_indiehackers_co".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium14.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 78,
                top: 3,
              ),
              child: Text(
                "msg_april_2_2022_9".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterMedium14.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
