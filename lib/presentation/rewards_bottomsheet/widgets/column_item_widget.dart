import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/rewards_controller.dart';
import '../models/column_item_model.dart';

// ignore_for_file: must_be_immutable
class ColumnItemWidget extends StatelessWidget {
  ColumnItemWidget(this.columnItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ColumnItemModel columnItemModelObj;

  var controller = Get.find<RewardsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle39735,
            height: 32.h,
            width: 32.h,
            radius: BorderRadius.only(
              topLeft: Radius.circular(16.h),
              bottomLeft: Radius.circular(16.h),
              bottomRight: Radius.circular(16.h),
            ),
          ),
          SizedBox(height: 10.h),
          Obx(
            () => Text(
              columnItemModelObj.text1!.value,
              style: CustomTextStyles.titleLargeOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 10.h),
          Obx(
            () => CustomImageView(
              imagePath: columnItemModelObj.image2!.value,
              height: 10.h,
              width: double.maxFinite,
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => Text(
                columnItemModelObj.text2!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMediumOnPrimaryContainer.copyWith(
                  height: 1.56,
                ),
              ),
            ),
          ),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }
}
