import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/coupondetails_controller.dart';
import '../models/expandableinfo_item_model.dart';

// ignore_for_file: must_be_immutable
class ExpandableinfoItemWidget extends StatelessWidget {
  ExpandableinfoItemWidget(this.expandableinfoItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ExpandableinfoItemModel expandableinfoItemModelObj;

  var controller = Get.find<CoupondetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray10003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      margin: EdgeInsets.only(right: 4.h),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(right: 6.h),
          title: SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_terms_conditions".tr,
                  style: CustomTextStyles.titleLargeBlack90022,
                )
              ],
            ),
          ),
          trailing: (expandableinfoItemModelObj.isSelected?.value ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 10.h,
                  width: 16.h,
                  margin: EdgeInsets.only(
                    right: 22.h,
                    bottom: 22.h,
                  ))
              : CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 10.h,
                  width: 16.h,
                  margin: EdgeInsets.only(
                    right: 22.h,
                    bottom: 22.h,
                  ),
                ),
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 2.h,
                right: 2.h,
                bottom: 2.h,
              ),
              child: Column(
                children: [
                  Text(
                    "msg_lorem_ipsum_is_simply".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumGray800.copyWith(
                      height: 1.43,
                    ),
                  )
                ],
              ),
            )
          ],
          onExpansionChanged: (value) {
            expandableinfoItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
