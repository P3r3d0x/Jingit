import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/coupondetails_controller.dart';
import '../models/offlineinfolist_item_model.dart';

// ignore_for_file: must_be_immutable
class OfflineinfolistItemWidget extends StatelessWidget {
  OfflineinfolistItemWidget(this.offlineinfolistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  OfflineinfolistItemModel offlineinfolistItemModelObj;

  var controller = Get.find<CoupondetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108.h,
      margin: EdgeInsets.only(
        top: 2.h,
        bottom: 28.h,
      ),
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: offlineinfolistItemModelObj.offlineStoreIma!.value,
              height: 26.h,
              width: 30.h,
            ),
          ),
          SizedBox(height: 10.h),
          Obx(
            () => Text(
              offlineinfolistItemModelObj.offlineStoreTex!.value,
              style: CustomTextStyles.titleMediumBlack900Medium,
            ),
          )
        ],
      ),
    );
  }
}
