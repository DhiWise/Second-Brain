import '../controller/notes_controller.dart';
import '../models/notes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore: must_be_immutable
class NotesItemWidget extends StatelessWidget {
  NotesItemWidget(this.notesItemModelObj);

  NotesItemModel notesItemModelObj;

  var controller = Get.find<NotesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 16,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 18,
              top: 13,
              bottom: 37,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgCalendar16X15,
              height: getVerticalSize(
                16.00,
              ),
              width: getHorizontalSize(
                15.00,
              ),
            ),
          ),
         Container(
            margin: getMargin(
              left: 9.5,
              top: 12,
              right: 16,
              bottom: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    notesItemModelObj.designwebsiteTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 8,
                    right: 10,
                  ),
                  child: Obx(
                    () => Text(
                      notesItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: AppStyle.txtInterMedium12WhiteA700.copyWith(),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
