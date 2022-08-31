import '../controller/main_controller.dart';
import '../models/main_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class MainScreenItemWidget extends StatelessWidget {
  MainScreenItemWidget(this.mainScreenItemModelObj);

  MainScreenItemModel mainScreenItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 21,
              right: 16,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgLocation,
              height: getVerticalSize(
                30.00,
              ),
              width: getHorizontalSize(
                33.00,
              ),
            ),
          ),
                    Padding(
            padding: getPadding(
              left: 10,
              top: 21,
              right: 10,
            ),
            child:Obx(
                  () => Text(
                    mainScreenItemModelObj.designwebsiteTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16.copyWith(),
                  ),
                ),

          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 16,
              right: 10,
              bottom: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getVerticalSize(
                    10.00,
                  ),
                  margin: getMargin(
                    top: 3.5,
                    bottom: 3.5,
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
