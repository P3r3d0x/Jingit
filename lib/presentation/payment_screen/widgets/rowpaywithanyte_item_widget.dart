import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/payment_controller.dart';
import '../models/rowpaywithanyte_item_model.dart';

// ignore_for_file: must_be_immutable
class RowpaywithanyteItemWidget extends StatelessWidget {
  RowpaywithanyteItemWidget(this.rowpaywithanyteItemModelObj, {Key? key})
      : super(
          key: key,
        );

  RowpaywithanyteItemModel rowpaywithanyteItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: rowpaywithanyteItemModelObj.image!.value,
            height: 40.h,
            width: 40.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_p".tr.toUpperCase(),
                  style: CustomTextStyles.titleMediumPrimary18_1,
                ),
                TextSpan(
                  text: "lbl_ay_with_any".tr,
                  style: CustomTextStyles.titleMediumPrimary18_1,
                ),
                TextSpan(
                  text: "lbl_upi2".tr.toUpperCase(),
                  style: CustomTextStyles.titleMediumPrimary18_1,
                ),
                TextSpan(
                  text: "lbl_app".tr,
                  style: CustomTextStyles.titleMediumPrimary18_1,
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Spacer(),
        Obx(
          () => CustomImageView(
            imagePath: rowpaywithanyteItemModelObj.image1!.value,
            height: 16.h,
            width: 10.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 8.h),
          ),
        )
      ],
    );
  }
}
