import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/transactiondetails_controller.dart';
import '../models/summarylist_item_model.dart';

// ignore_for_file: must_be_immutable
class SummarylistItemWidget extends StatelessWidget {
  SummarylistItemWidget(this.summarylistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SummarylistItemModel summarylistItemModelObj;

  var controller = Get.find<TransactiondetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182.h,
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              summarylistItemModelObj.oneHundredFifty!.value,
              style: CustomTextStyles.headlineLargeWhiteA70032,
            ),
          ),
          SizedBox(height: 14.h),
          Obx(
            () => Text(
              summarylistItemModelObj.total!.value,
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }
}
