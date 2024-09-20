import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/boughtcoupondetails_controller.dart';
import 'models/itemlist_item_model.dart';
import 'widgets/itemlist_item_widget.dart'; // ignore_for_file: must_be_immutable

class BoughtcoupondetailsScreen
    extends GetWidget<BoughtcoupondetailsController> {
  const BoughtcoupondetailsScreen({Key? key})
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
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 20.h,
              ),
              child: Column(
                children: [
                  _buildCardDetails(),
                  SizedBox(height: 16.h),
                  _buildItemList(),
                  SizedBox(height: 16.h),
                  _buildPaymentDetails(),
                  SizedBox(height: 16.h),
                  _buildOrderDetails(),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildActionsRow(),
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
        text: "lbl_flipkart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCardDetails() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          Container(
            height: 60.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 50.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup1000004471,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup604,
                  height: 60.h,
                  width: 60.h,
                )
              ],
            ),
          ),
          SizedBox(height: 36.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_card_worth".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Text(
                    "lbl_10_0002".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_purchased_on".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
                Text(
                  "lbl_11_july_2024".tr,
                  style: theme.textTheme.titleLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildItemList() {
    return Container(
      height: 118.h,
      width: 396.h,
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 8.h,
            right: 4.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller
              .boughtcoupondetailsModelObj.value.itemlistItemList.value.length,
          itemBuilder: (context, index) {
            ItemlistItemModel model = controller.boughtcoupondetailsModelObj
                .value.itemlistItemList.value[index];
            return ItemlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentDetails() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(vertical: 18.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "lbl_payment_details".tr,
                style: CustomTextStyles.titleLargePrimary_1,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.gray300,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 28.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_card_worth".tr,
                  style: CustomTextStyles.titleMediumPrimaryMedium,
                ),
                Text(
                  "lbl_100".tr,
                  style: CustomTextStyles.bodyLarge18,
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 28.h,
              right: 20.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_instant_discount2".tr,
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                      TextSpan(
                        text: "lbl_103".tr,
                        style: CustomTextStyles.titleMediumBlueA400,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text(
                  "lbl2".tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_104".tr,
                    style: CustomTextStyles.bodyLarge18,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.gray300,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 28.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_you_paid".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  "lbl_90".tr,
                  style: theme.textTheme.headlineSmall,
                )
              ],
            ),
          ),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails() {
    return Container(
      margin: EdgeInsets.only(left: 24.h),
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_order_details".tr,
                    style: CustomTextStyles.titleLargePrimary_1,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "lbl_order_id".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "lbl_transaction_id".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 8.h),
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_1545625".tr,
                            style: CustomTextStyles.bodyLarge18,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img352285ContentCopyIcon,
                            height: 20.h,
                            width: 20.h,
                            margin: EdgeInsets.only(left: 6.h),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "lbl_8545625".tr,
                            style: CustomTextStyles.bodyLarge18,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img352285ContentCopyIcon,
                            height: 20.h,
                            width: 20.h,
                            margin: EdgeInsets.only(left: 6.h),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionsRow() {
    return Container(
      height: 44.h,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
        bottom: 20.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              height: 44.h,
              text: "lbl_view_invoice".tr.toUpperCase(),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFile,
                  height: 18.h,
                  width: 14.h,
                ),
              ),
              buttonStyle: CustomButtonStyles.fillPrimaryTL24,
              buttonTextStyle: CustomTextStyles.titleSmallHvDTrialGraphit,
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: CustomElevatedButton(
              height: 44.h,
              text: "lbl_support_team".tr.toUpperCase(),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 10.h),
                child: CustomImageView(
                  imagePath:
                      ImageConstant.img8678080customerservicefillsupporticon11,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
              buttonStyle: CustomButtonStyles.outlineBlackTL22,
              buttonTextStyle: CustomTextStyles.titleSmallHvDTrialGraphit,
            ),
          )
        ],
      ),
    );
  }
}
