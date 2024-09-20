import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/boughtcoupondetails_controller.dart';
import '../models/itemlist_item_model.dart';

// ignore_for_file: must_be_immutable
class ItemlistItemWidget extends StatelessWidget {
  ItemlistItemWidget(this.itemlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ItemlistItemModel itemlistItemModelObj;

  var controller = Get.find<BoughtcoupondetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122.h,
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 14.h,
      ),
      decoration: AppDecoration.outlineGray5003f1.copyWith(
        borderRadius: BorderRadiusStyle.customBorderLR40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              itemlistItemModelObj.itemText!.value,
              style: CustomTextStyles.titleLargeBlack900Medium,
            ),
          ),
          SizedBox(height: 12.h),
          Obx(
            () => CustomImageView(
              imagePath: itemlistItemModelObj.itemImage!.value,
              height: 46.h,
              width: double.maxFinite,
            ),
          )
        ],
      ),
    );
  }
}
