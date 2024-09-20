import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/fashioncolumn_item_model.dart';

// ignore_for_file: must_be_immutable
class FashioncolumnItemWidget extends StatelessWidget {
  FashioncolumnItemWidget(this.fashioncolumnItemModelObj, {Key? key})
      : super(
          key: key,
        );

  FashioncolumnItemModel fashioncolumnItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.h,
      ),
      decoration: AppDecoration.outlineGray5003f,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 86.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: fashioncolumnItemModelObj.image1!.value,
                    height: 84.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: fashioncolumnItemModelObj.image2!.value,
                    height: 86.h,
                    width: 84.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              fashioncolumnItemModelObj.text1!.value,
              style: CustomTextStyles.titleMediumBlack900_2,
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              fashioncolumnItemModelObj.text2!.value,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 8.h)
        ],
      ),
    );
  }
}
