import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/transactiondetails_controller.dart';
import '../models/cardlist_item_model.dart';

// ignore_for_file: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  CardlistItemWidget(this.cardlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CardlistItemModel cardlistItemModelObj;

  var controller = Get.find<TransactiondetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: cardlistItemModelObj.cardImage!.value,
              height: 52.h,
              width: 52.h,
              radius: BorderRadius.circular(
                26.h,
              ),
            ),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    cardlistItemModelObj.cardTitle!.value,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  ),
                ),
                SizedBox(height: 8.h),
                Obx(
                  () => Text(
                    cardlistItemModelObj.cardSubtitle!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 20.h),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 16.h,
            width: 10.h,
          )
        ],
      ),
    );
  }
}
