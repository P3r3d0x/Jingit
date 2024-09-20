import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/discountpopup_controller.dart';

// ignore_for_file: must_be_immutable
class DiscountpopupDialog extends StatelessWidget {
  DiscountpopupDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  DiscountpopupController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildWelcomeOfferSection(),
              SizedBox(height: 20.h),
              _buildAdditionalDiscountSection(),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                height: 50.h,
                text: "lbl_awesome".tr.toUpperCase(),
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL24,
              ),
              SizedBox(height: 30.h)
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildWelcomeOfferSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.fillRed30021.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder194,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage68,
            height: 268.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 12.h),
          ),
          Text(
            "lbl_welcome_offer".tr.toUpperCase(),
            style: CustomTextStyles.titleMediumBlack900Medium,
          ),
          SizedBox(height: 22.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalDiscountSection() {
    return Container(
      height: 222.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 8.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 18.h,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "msg_additional_1_discount".tr,
                      style: CustomTextStyles.headlineMediumBlack900,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_o".tr.toUpperCase(),
                          style: CustomTextStyles.bodyLargeBlack900Light,
                        ),
                        TextSpan(
                          text: "msg_n_your_1st_brand".tr,
                          style: CustomTextStyles.bodyLargeBlack900Light,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 22.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      color: appTheme.gray40001,
                      indent: 4.h,
                      endIndent: 4.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "msg_coupon_code_jingit007".tr.toUpperCase(),
                    style: CustomTextStyles.titleSmallBlue700,
                  )
                ],
              ),
            ),
          ),
          IntrinsicHeight(
            child: SizedBox(
              height: 124.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 34.h,
                    width: 34.h,
                    margin: EdgeInsets.only(bottom: 88.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray100,
                        width: 1.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "msg_offer_expires_soon".tr,
                      style: CustomTextStyles.bodyLargeDeeporangeA400,
                    ),
                  ),
                  Container(
                    height: 34.h,
                    width: 34.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.h,
                      ),
                      border: Border.all(
                        color: appTheme.blueGray100,
                        width: 1.h,
                      ),
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
}
