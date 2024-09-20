import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/denominations_controller.dart';
import 'models/dynamicrow_item_model.dart';
import 'widgets/dynamicrow_item_widget.dart'; // ignore_for_file: must_be_immutable

class DenominationsScreen extends GetWidget<DenominationsController> {
  const DenominationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTrustedSection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 24.h,
                    ),
                    child: Column(
                      children: [
                        _buildCardDetails(),
                        SizedBox(height: 28.h),
                        _buildDynamicRow(),
                        SizedBox(height: 18.h),
                        CustomElevatedButton(
                          text: "msg_apply_coupon_code".tr,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            right: 12.h,
                          ),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 16.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgTelevisionWhiteA70024x28,
                              height: 24.h,
                              width: 28.h,
                            ),
                          ),
                          buttonTextStyle: CustomTextStyles.titleMediumMedium,
                        ),
                        SizedBox(height: 16.h),
                        _buildSummarySection(),
                        SizedBox(height: 4.h)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildProceedToPayment()],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrustedSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: AppDecoration.gradientLimeToLime100,
      child: Column(
        children: [
          CustomAppBar(
            height: 26.h,
            leadingWidth: 46.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgLayer2,
              margin: EdgeInsets.only(
                left: 22.h,
                top: 10.h,
                bottom: 3.h,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "msg_netflix_gift_card".tr,
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 14.h,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage63,
                        height: 20.h,
                        width: 18.h,
                      ),
                      SizedBox(width: 6.h),
                      Text(
                        "msg_100_trusted_secure".tr,
                        style: theme.textTheme.bodyLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardDetails() {
    return Container(
      height: 232.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 6.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 20.h,
              ),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_card_worth".tr,
                    style: CustomTextStyles.titleLargeMedium,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "lbl_1000".tr.toUpperCase(),
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBarcode,
                          height: 22.h,
                          width: 76.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBarcode,
                          height: 24.h,
                          width: 86.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h)
                ],
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 44.h,
              margin: EdgeInsets.only(
                left: 22.h,
                right: 26.h,
              ),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_validity_12_months".tr,
                    style: CustomTextStyles.titleMediumPrimary_1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.h,
                      color: appTheme.black900.withOpacity(0.13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "lbl_1000_10000".tr,
                      style: CustomTextStyles.titleMediumPrimary_1,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicRow() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 8.h,
            );
          },
          itemCount: controller
              .denominationsModelObj.value.dynamicrowItemList.value.length,
          itemBuilder: (context, index) {
            DynamicrowItemModel model = controller
                .denominationsModelObj.value.dynamicrowItemList.value[index];
            return DynamicrowItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSummarySection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 8.h,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildPayableAmount(
              payableamount: "lbl_total_amount".tr,
              price: "lbl_1000".tr,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_instant_discount".tr,
                  style: CustomTextStyles.titleMediumPrimaryBold,
                ),
                Spacer(),
                Text(
                  "lbl2".tr,
                  style: CustomTextStyles.titleMediumPrimaryBold,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_100".tr,
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.gray200,
              endIndent: 6.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildPayableAmount(
              payableamount: "lbl_payable_amount".tr,
              price: "lbl_900".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProceedToPayment() {
    return CustomElevatedButton(
      text: "msg_proceed_to_payment".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 22.h,
        right: 22.h,
        bottom: 20.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 18.h),
        child: CustomImageView(
          imagePath: ImageConstant.img4829869arrownextrighticon61,
          height: 28.h,
          width: 28.h,
        ),
      ),
      onPressed: () {
        onTapProceedToPayment();
      },
    );
  }

  /// Common widget
  Widget _buildPayableAmount({
    required String payableamount,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          payableamount,
          style: CustomTextStyles.titleLargeGreen700.copyWith(
            color: appTheme.green700,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleLargeGreen700.copyWith(
            color: appTheme.green700,
          ),
        )
      ],
    );
  }

  /// Navigates to the coupondetailsScreen when the action is triggered.
  onTapProceedToPayment() {
    Get.toNamed(
      AppRoutes.coupondetailsScreen,
    );
  }
}
