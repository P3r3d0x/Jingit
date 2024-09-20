import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/usersignin_controller.dart'; // ignore_for_file: must_be_immutable

class UsersigninScreen extends GetWidget<UsersigninController> {
  const UsersigninScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 8.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_welcome".tr,
                style: CustomTextStyles.headlineMediumPrimary27,
              ),
              SizedBox(height: 4.h),
              Text(
                "msg_let_s_get_to_know".tr,
                style: CustomTextStyles.bodyLargeLight_1,
              ),
              SizedBox(height: 36.h),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: CustomFloatingTextField(
                  controller: controller.fullNameController,
                  labelText: "lbl_full_name".tr,
                  labelStyle: CustomTextStyles.titleLargePrimary22,
                  hintText: "lbl_full_name".tr,
                  contentPadding: EdgeInsets.only(
                    left: 20.h,
                    right: 20.h,
                    bottom: 24.h,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: CustomFloatingTextField(
                  controller: controller.emailController,
                  labelText: "lbl_email_address".tr,
                  labelStyle: CustomTextStyles.titleLargePrimary22,
                  hintText: "lbl_email_address".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  contentPadding: EdgeInsets.only(
                    left: 20.h,
                    right: 20.h,
                    bottom: 24.h,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20.h),
              _buildReferralCodeSection(),
              SizedBox(height: 4.h)
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildContinueButton()],
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
  Widget _buildReferralCodeSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.only(
        left: 20.h,
        top: 16.h,
        bottom: 16.h,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_referral_code_optional".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 10.h),
          Text(
            "lbl_852145_85".tr,
            style: CustomTextStyles.titleLargePrimary22,
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: 296.h,
            child: Text(
              "msg_referral_code_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallInterGray70001.copyWith(
                height: 1.25,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
      text: "lbl_continue".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 22.h,
        right: 22.h,
        bottom: 40.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.img4829869arrownextrighticon61,
          height: 28.h,
          width: 28.h,
        ),
      ),
      buttonTextStyle: CustomTextStyles.titleMediumHvDTrialGraphit,
      onPressed: () {
        onTapContinueButton();
      },
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapContinueButton() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
