import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/rewardstracker_controller.dart';
import '../models/userprofilelist_item_model.dart';

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<RewardstrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofilelistItemModelObj.userImage!.value,
              height: 50.h,
              width: 50.h,
              radius: BorderRadius.circular(
                24.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.username!.value,
                        style: CustomTextStyles.titleMediumPrimary18,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.joinDate!.value,
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img011316x18,
            height: 16.h,
            width: 18.h,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 14.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 12.h,
            ),
            child: Obx(
              () => Text(
                userprofilelistItemModelObj.text!.value,
                style: CustomTextStyles.titleMediumLime700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
