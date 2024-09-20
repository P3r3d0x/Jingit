import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_switch.dart';
import 'controller/settinggs_controller.dart'; // ignore_for_file: must_be_immutable

class SettinggsScreen extends GetWidget<SettinggsController> {
  const SettinggsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              _buildLocationSection(),
              SizedBox(height: 14.h),
              _buildMobileSection(),
              SizedBox(height: 14.h),
              _buildUserSection(),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 94.h,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img4829869ArrowNextRightIcon,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 27.h,
          bottom: 39.h,
        ),
        onTap: () {
          onTaparrow();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_settings".tr,
      ),
      styleType: Style.bgGradientnamelime600opacity022namelime100opacity022,
    );
  }

  /// Section Widget
  Widget _buildLocationSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 44.h,
            width: 44.h,
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_app_lock".tr,
                    style: CustomTextStyles.titleMediumBlack900Medium,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "msg_secure_your_app".tr,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 18.h),
          Obx(
            () => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          SizedBox(
            height: 44.h,
            width: 44.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMobile,
                  height: 44.h,
                  width: double.maxFinite,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img3688451Secure,
                  height: 30.h,
                  width: 30.h,
                )
              ],
            ),
          ),
          SizedBox(width: 18.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_app_permissions".tr,
                    style: CustomTextStyles.titleMediumBlack900Medium,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "msg_permissions_required".tr,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 18.h),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 16.h,
            width: 10.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 44.h,
                    width: 44.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  SizedBox(width: 18.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_haptic_feedbacks".tr,
                          style: CustomTextStyles.titleMediumBlack900Medium,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "msg_vibrations_on_touch".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Obx(
            () => CustomSwitch(
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              },
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTaparrow() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
