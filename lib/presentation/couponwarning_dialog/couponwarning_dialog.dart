import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/couponwarning_controller.dart';

// ignore_for_file: must_be_immutable
class CouponwarningDialog extends StatelessWidget {
  CouponwarningDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  CouponwarningController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 30.h,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                height: 40.h,
                width: 184.h,
                text: "lbl_please_note".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillBlueGray,
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  "msg_any_brand_offer".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                    height: 1.42,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionWhiteA70080x72,
                height: 80.h,
                width: 72.h,
              ),
              SizedBox(height: 24.h),
              Text(
                "msg_we_recommend_you".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeWhiteA70018.copyWith(
                  height: 1.78,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "lbl_t_cs".tr,
                style: CustomTextStyles.bodyLargeBlue500,
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                text: "lbl_continue".tr.toUpperCase(),
                margin: EdgeInsets.only(left: 4.h),
                buttonStyle: CustomButtonStyles.outlineBlackTL28,
                buttonTextStyle: CustomTextStyles.titleMediumPrimaryBold,
              )
            ],
          ),
        )
      ],
    );
  }
}
