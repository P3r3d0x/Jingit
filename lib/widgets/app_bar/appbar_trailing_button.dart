import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../custom_elevated_button.dart';

class AppbarTrailingButton extends StatelessWidget {
  AppbarTrailingButton({Key? key, this.margin, this.onTap})
      : super(
          key: key,
        );

  final EdgeInsetsGeometry? margin;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 32.h,
          width: 86.h,
          text: "lbl_refer".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsup,
              height: 16.h,
              width: 16.h,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlineBlackTL18,
          buttonTextStyle: CustomTextStyles.titleSmallBlack900,
        ),
      ),
    );
  }
}
