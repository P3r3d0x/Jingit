import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/transactiondetails_controller.dart';
import 'models/cardlist_item_model.dart';
import 'models/summarylist_item_model.dart';
import 'widgets/cardlist_item_widget.dart';
import 'widgets/summarylist_item_widget.dart'; // ignore_for_file: must_be_immutable

class TransactiondetailsScreen extends GetWidget<TransactiondetailsController> {
  const TransactiondetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDateRow(),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_12_000_00".tr,
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 18.h),
                  _buildSummaryList(),
                  SizedBox(height: 18.h),
                  _buildCardList(),
                  SizedBox(height: 10.h),
                  _buildAdditionalInfo()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img4829869ArrowNextRightIcon,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 14.h,
          bottom: 14.h,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_transaction".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDateRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_jan_2024".tr,
            style: CustomTextStyles.titleMediumPrimaryMedium,
          ),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomIconButton(
              height: 50.h,
              width: 50.h,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.gradientLimeToLimeA,
              child: CustomImageView(
                imagePath: ImageConstant.img8530644CalendarAltIcon,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSummaryList() {
    return SizedBox(
      height: 112.h,
      width: 396.h,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 4.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: controller.transactiondetailsModelObj.value
              .summarylistItemList.value.length,
          itemBuilder: (context, index) {
            SummarylistItemModel model = controller.transactiondetailsModelObj
                .value.summarylistItemList.value[index];
            return SummarylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardList() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.h,
            );
          },
          itemCount: controller
              .transactiondetailsModelObj.value.cardlistItemList.value.length,
          itemBuilder: (context, index) {
            CardlistItemModel model = controller
                .transactiondetailsModelObj.value.cardlistItemList.value[index];
            return CardlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.only(left: 26.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16.h),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse276x52,
                  height: 6.h,
                  width: 52.h,
                  radius: BorderRadius.circular(
                    3.h,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 98.h),
            child: Text(
              "msg_600_zomato_card".tr,
              style: CustomTextStyles.titleMediumPrimaryMedium,
            ),
          )
        ],
      ),
    );
  }
}
