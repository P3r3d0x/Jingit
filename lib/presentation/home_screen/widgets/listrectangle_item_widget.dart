import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/listrectangle_item_model.dart';

// ignore_for_file: must_be_immutable
class ListrectangleItemWidget extends StatelessWidget {
  ListrectangleItemWidget(this.listrectangleItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListrectangleItemModel listrectangleItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 286.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Obx(
          () => CustomImageView(
            imagePath: listrectangleItemModelObj.rectangle!.value,
            height: 136.h,
            width: 286.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(
              top: 10.h,
              bottom: 14.h,
            ),
          ),
        ),
      ),
    );
  }
}
