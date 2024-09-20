import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/rewards_controller.dart';
import 'models/column_item_model.dart';
import 'widgets/column_item_widget.dart';

// ignore_for_file: must_be_immutable
class RewardsBottomsheet extends StatelessWidget {
  RewardsBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  RewardsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPointBalanceSection(),
          SizedBox(height: 18.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 230.h,
              padding: EdgeInsets.symmetric(
                horizontal: 28.h,
                vertical: 12.h,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.customBorderLR30,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup111,
                    height: 34.h,
                    width: 34.h,
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(16.h),
                      bottomLeft: Radius.circular(16.h),
                      bottomRight: Radius.circular(16.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 42.h),
                    child: Text(
                      "lbl_00".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 32.h),
          _buildPendingPointsSection(),
          SizedBox(height: 8.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPointBalanceSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              onTapViewone();
            },
            child: Container(
              height: 10.h,
              width: 54.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1000004471,
                  height: 46.h,
                  width: 164.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_rewards".tr,
                    style: CustomTextStyles.headlineMediumMedium_1,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 22.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_your_point_balance".tr,
              style: CustomTextStyles.headlineSmallMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPendingPointsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
      child: Column(
        children: [
          Container(
            height: 202.h,
            width: 396.h,
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: Obx(
              () => ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 18.h,
                  );
                },
                itemCount: controller
                    .rewardsModelObj.value.columnItemList.value.length,
                itemBuilder: (context, index) {
                  ColumnItemModel model = controller
                      .rewardsModelObj.value.columnItemList.value[index];
                  return ColumnItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapViewone() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
