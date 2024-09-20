import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/coupondetails_controller.dart';
import 'models/expandableinfo_item_model.dart';
import 'models/offlineinfolist_item_model.dart';
import 'widgets/expandableinfo_item_widget.dart';
import 'widgets/offlineinfolist_item_widget.dart'; // ignore_for_file: must_be_immutable

class CoupondetailsScreen extends GetWidget<CoupondetailsController> {
  const CoupondetailsScreen({Key? key})
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
              _buildTrustedInfoSection(),
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
                        _buildOfferSection(),
                        SizedBox(height: 28.h),
                        _buildOfflineInfoList(),
                        SizedBox(height: 28.h),
                        _buildExpandableInfo(),
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
          children: [_buildBuyButton()],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrustedInfoSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: AppDecoration.gradientLimeToLime100,
      child: Column(
        children: [
          CustomAppBar(
            height: 26.h,
            leadingWidth: 41.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgLayer2,
              margin: EdgeInsets.only(
                left: 17.h,
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
            padding: EdgeInsets.symmetric(horizontal: 56.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage63,
                        height: 20.h,
                        width: 18.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_100_trusted_secure".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
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
  Widget _buildOfferSection() {
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
              padding: EdgeInsets.symmetric(vertical: 48.h),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage860x194,
                    height: 60.h,
                    width: 194.h,
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "lbl_get_4_5_off".tr.toUpperCase(),
                    style: CustomTextStyles.headlineSmallWhiteA700,
                  ),
                  SizedBox(height: 12.h)
                ],
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 44.h,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.h,
              ),
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_offline".tr.toUpperCase(),
                    style: CustomTextStyles.titleMediumGreen700,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.h,
                      color: appTheme.black900.withOpacity(0.13),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_in_store".tr.toUpperCase(),
                      style: CustomTextStyles.titleMediumAmber500,
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
  Widget _buildOfflineInfoList() {
    return Container(
      height: 92.h,
      width: 396.h,
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 4.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 18.h,
            );
          },
          itemCount: controller
              .coupondetailsModelObj.value.offlineinfolistItemList.value.length,
          itemBuilder: (context, index) {
            OfflineinfolistItemModel model = controller.coupondetailsModelObj
                .value.offlineinfolistItemList.value[index];
            return OfflineinfolistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandableInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: controller
              .coupondetailsModelObj.value.expandableinfoItemList.value.length,
          itemBuilder: (context, index) {
            ExpandableinfoItemModel model = controller.coupondetailsModelObj
                .value.expandableinfoItemList.value[index];
            return ExpandableinfoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyButton() {
    return CustomElevatedButton(
      text: "lbl_buy_this_card".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 22.h,
        right: 22.h,
        bottom: 28.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 24.h),
        child: CustomImageView(
          imagePath: ImageConstant.img4829869arrownextrighticon61,
          height: 28.h,
          width: 28.h,
        ),
      ),
      onPressed: () {
        onTapBuyButton();
      },
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapBuyButton() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }
}
