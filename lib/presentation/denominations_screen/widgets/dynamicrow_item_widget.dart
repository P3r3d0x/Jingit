import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/denominations_controller.dart';
import '../models/dynamicrow_item_model.dart';

// ignore_for_file: must_be_immutable
class DynamicrowItemWidget extends StatelessWidget {
  DynamicrowItemWidget(this.dynamicrowItemModelObj, {Key? key})
      : super(
          key: key,
        );

  DynamicrowItemModel dynamicrowItemModelObj;

  var controller = Get.find<DenominationsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Obx(
              () => Text(
                dynamicrowItemModelObj.amount!.value,
                style: CustomTextStyles.titleLargePrimaryBold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 130.h,
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.outlineGray300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30.h,
                    height: 30.h,
                    alignment: Alignment.center,
                    decoration: AppDecoration.fillPrimary,
                    child: Obx(
                      () => Text(
                        dynamicrowItemModelObj.minusSign!.value,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargePoppins,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.h),
                  Obx(
                    () => Text(
                      dynamicrowItemModelObj.number!.value,
                      style: CustomTextStyles.titleMediumPoppinsPrimary,
                    ),
                  ),
                  SizedBox(width: 20.h),
                  Container(
                    width: 30.h,
                    height: 30.h,
                    alignment: Alignment.center,
                    decoration: AppDecoration.fillPrimary,
                    child: Obx(
                      () => Text(
                        dynamicrowItemModelObj.plusSign!.value,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargePoppins,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
