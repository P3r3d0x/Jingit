import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import 'controller/login_controller.dart'; // ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.h),
          child: Column(
            children: [
              _buildWelcomeSection(),
              SizedBox(height: 94.h),
              _buildContinueSection(),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLayer2,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 21.h,
          bottom: 22.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img0113,
            height: 48.h,
            width: 172.h,
          ),
          SizedBox(height: 58.h),
          Text(
            "msg_welcome_to_jingit".tr,
            style: CustomTextStyles.headlineLargePrimary,
          ),
          Text(
            "msg_continue_with_mobile".tr,
            style: CustomTextStyles.bodyLargeLight_1,
          ),
          SizedBox(height: 44.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 8.h),
            child: Obx(
              () => CustomPhoneNumber(
                country: controller.selectedCountry.value,
                controller: controller.phoneNumberController,
                onTap: (Country value) {
                  controller.selectedCountry.value = value;
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueSection() {
    return SizedBox(
      height: 64.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_by_continuing_i2".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "msg_terns_conditions".tr,
                  style: CustomTextStyles.labelMediumPoppinsPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: "lbl_and".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "lbl_privacy_policy".tr,
                  style: CustomTextStyles.labelMediumPoppinsPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
            textAlign: TextAlign.left,
          ),
          CustomElevatedButton(
            width: 378.h,
            text: "lbl_continue".tr.toUpperCase(),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.img4829869arrownextrighticon61,
                height: 28.h,
                width: 28.h,
              ),
            ),
            onPressed: () {
              onTapContinue();
            },
            alignment: Alignment.topLeft,
          )
        ],
      ),
    );
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
