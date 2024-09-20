import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/columnview_item_model.dart';

// ignore_for_file: must_be_immutable
class ColumnviewItemWidget extends StatelessWidget {
  ColumnviewItemWidget(this.columnviewItemModelObj,
      {Key? key, this.onTapColumnview})
      : super(
          key: key,
        );

  ColumnviewItemModel columnviewItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapColumnview;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnview?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        decoration: AppDecoration.fillIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 6.h,
              width: 24.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_2".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                  TextSpan(
                    text: "lbl_off".tr.toUpperCase(),
                    style: theme.textTheme.titleLarge,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Obx(
              () => CustomImageView(
                imagePath: columnviewItemModelObj.offerImage!.value,
                height: 42.h,
                width: double.maxFinite,
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              height: 6.h,
              width: 24.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
