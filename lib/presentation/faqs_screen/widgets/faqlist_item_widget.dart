import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/faqs_controller.dart';
import '../models/faqlist_item_model.dart';

// ignore_for_file: must_be_immutable
class FaqlistItemWidget extends StatelessWidget {
  FaqlistItemWidget(this.faqlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  FaqlistItemModel faqlistItemModelObj;

  var controller = Get.find<FaqsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.only(left: 4.h),
          title: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.h,
            ),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_what_are_the_brands".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          trailing: (faqlistItemModelObj.isSelected?.value ?? false)
              ? CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 14.h,
                  width: 14.h,
                  margin: EdgeInsets.only(
                    top: 4.h,
                    right: 2.h,
                  ))
              : CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 14.h,
                  width: 14.h,
                  margin: EdgeInsets.only(
                    top: 4.h,
                    right: 2.h,
                  ),
                ),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam posuere quis orci sit amet consequat.',
              ),
            )
          ],
          onExpansionChanged: (value) {
            faqlistItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
