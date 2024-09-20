import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/helpandsupport_controller.dart'; // ignore_for_file: must_be_immutable

class HelpandsupportScreen extends GetWidget<HelpandsupportController> {
  const HelpandsupportScreen({Key? key})
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
                horizontal: 18.h,
                vertical: 16.h,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  _buildGreetingSection(),
                  SizedBox(height: 12.h),
                  _buildHelpSection(),
                  SizedBox(height: 170.h),
                  _buildFeedbackSection()
                ],
              ),
            ),
          ),
        ),
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
        onTap: () {
          onTaparrow();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_help_and_suppport".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGreetingSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 30.h,
        top: 18.h,
        bottom: 18.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hi_priya".tr,
            style: CustomTextStyles.headlineMediumPoppinsBlack900,
          ),
          Text(
            "msg_how_we_can_help".tr,
            style: CustomTextStyles.titleLargePrimaryRegular,
          ),
          SizedBox(height: 6.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 18.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 278.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_need_help".tr,
                          style: CustomTextStyles.headlineSmallPoppinsBlack900,
                        ),
                        Text(
                          "msg_frequently_asked2".tr,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargePoppinsBlack900_1
                              .copyWith(
                            height: 2.31,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlack900,
                  height: 16.h,
                  width: 10.h,
                  margin: EdgeInsets.only(top: 12.h),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 22.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_still_need_support".tr,
              style: CustomTextStyles.titleLargePrimaryRegular22,
            ),
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_we_are_available".tr,
              style: CustomTextStyles.titleLargePrimaryLight,
            ),
          ),
          SizedBox(height: 22.h),
          CustomElevatedButton(
            height: 54.h,
            text: "lbl_chat_with_us".tr.toUpperCase(),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant
                    .img5402361bubblechatmessagenotificationcommenticon1,
                height: 30.h,
                width: 30.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientLimeToLimeTL26Decoration,
            buttonTextStyle: CustomTextStyles.titleMediumHvDTrialGraphitPrimary,
          ),
          SizedBox(height: 26.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_we_typically_replay".tr,
              style: CustomTextStyles.bodyLargeLight18,
            ),
          ),
          SizedBox(height: 24.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_did_this_resolve".tr,
            style: CustomTextStyles.titleLargePrimary_1,
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: 154.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 56.h,
                  width: 56.h,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1814076Approve,
                  ),
                ),
                CustomIconButton(
                  height: 56.h,
                  width: 56.h,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1814076Approve,
                  ),
                )
              ],
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
