import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/profile_details_controller.dart'; // ignore_for_file: must_be_immutable

class ProfileDetailsScreen extends GetWidget<ProfileDetailsController> {
  const ProfileDetailsScreen({Key? key})
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
            horizontal: 20.h,
            vertical: 22.h,
          ),
          child: Column(
            children: [
              _buildFullNameField(),
              SizedBox(height: 14.h),
              _buildFullNameField1(),
              SizedBox(height: 14.h),
              _buildEmailField(),
              SizedBox(height: 14.h),
              _buildReferralCodeField(),
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
      height: 94.h,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img4829869ArrowNextRightIcon,
        onTap: onTapArrow,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 27.h,
          bottom: 39.h,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_profile_details".tr,
      ),
      styleType: Style.bgGradientnamelime600opacity022namelime100opacity022,
    );
  }

  /// Section Widget
  Widget _buildFullNameField() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomFloatingTextField(
        controller: controller.fullNameFieldController,
        labelText: "lbl_full_name".tr,
        labelStyle: CustomTextStyles.titleLargePrimary22,
        hintText: "lbl_full_name".tr,
        contentPadding: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 24.h,
        ),
        borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayFTL6,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameField1() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomFloatingTextField(
        controller: controller.fullNameField1Controller,
        labelText: "lbl_full_name".tr,
        labelStyle: CustomTextStyles.titleLargePrimary22,
        hintText: "lbl_full_name".tr,
        contentPadding: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 24.h,
        ),
        borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayFTL6,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomFloatingTextField(
        controller: controller.emailFieldController,
        labelText: "lbl_email_address".tr,
        labelStyle: CustomTextStyles.titleLargePrimary22,
        hintText: "lbl_email_address".tr,
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 24.h,
        ),
        borderDecoration: FloatingTextFormFieldStyleHelper.outlineGrayFTL6,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email";
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReferralCodeField() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomFloatingTextField(
        controller: controller.referralCodeFieldController,
        labelText: "msg_referral_code_optional".tr,
        labelStyle: CustomTextStyles.titleLargePrimary22,
        hintText: "msg_referral_code_optional".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 24.h,
        ),
      ),
    );
  }


  onTapArrow() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
