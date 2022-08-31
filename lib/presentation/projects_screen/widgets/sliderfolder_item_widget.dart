import '../controller/projects_controller.dart';
import '../models/sliderfolder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:secondbrain_app/core/app_export.dart';

// ignore: must_be_immutable
class SliderfolderItemWidget extends StatelessWidget {
  SliderfolderItemWidget(this.sliderfolderItemModelObj, {this.onTapImgFolder});

  SliderfolderItemModel sliderfolderItemModelObj;

  var controller = Get.find<ProjectsController>();

  VoidCallback? onTapImgFolder;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.outlineGray70011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 17,
                  top: 1,
                  right: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTapImgFolder!();
                      },
                      child: Padding(
                        padding: getPadding(
                          top: 2,
                          bottom: 1,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgFolder,
                          height: getVerticalSize(
                            15.00,
                          ),
                          width: getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 9,
                      ),
                      child: Text(
                        "msg_build_a_landing".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular16Black900.copyWith(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 157,
                  top: 20,
                  right: 157,
                  bottom: 15,
                ),
                child: Text(
                  "lbl_1_3".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Black900.copyWith(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
