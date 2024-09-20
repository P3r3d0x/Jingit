import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/profile_controller.dart'; // ignore_for_file: must_be_immutable

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSavingsSection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(
                      children: [
                        _buildBrandGiftCards(),
                        SizedBox(height: 26.h),
                        _buildTransactionSection(),
                        SizedBox(height: 16.h),
                        _buildAboutJingit(),
                        SizedBox(height: 12.h),
                        _buildGeneralInformation(),
                        SizedBox(height: 6.h)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSavingsSection() {
    return SizedBox(
      height: 280.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 26.h),
              decoration: AppDecoration.gradientLimeToLime1001,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 28.h,
                    leadingWidth: 49.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.img4829869ArrowNextRightIcon,
                      margin: EdgeInsets.only(left: 21.h),
                      onTap: () {
                        onTaparrow();
                      },
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "lbl_my_profile".tr,
                    ),
                  ),
                  SizedBox(height: 34.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 18.h,
                      right: 14.h,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 2.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 16.h,
                          ),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse26,
                                height: 70.h,
                                width: 72.h,
                                radius: BorderRadius.circular(
                                  34.h,
                                ),
                              ),
                              SizedBox(width: 16.h),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_hello_priya".tr,
                                        style: CustomTextStyles
                                            .headlineLargePrimary,
                                      ),
                                      Text(
                                        "msg_91_987_654_3210".tr,
                                        style:
                                            CustomTextStyles.bodyLargeLight_1,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 16.h),
                              CustomElevatedButton(
                                height: 26.h,
                                width: 110.h,
                                onPressed: onTapProfileDetails,
                                text: "lbl_edit_profile".tr,
                                buttonStyle: CustomButtonStyles.outlineBlueGray,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumBlue700,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 34.h,
              width: 136.h,
              margin: EdgeInsets.only(
                right: 30.h,
                bottom: 16.h,
              ),
              decoration: BoxDecoration(
                color: appTheme.green5011,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
                border: Border.all(
                  color: appTheme.whiteA700,
                  width: 1.h,
                ),
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 68.h,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 14.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 12.h,
                      ),
                      decoration: AppDecoration.fillBlackF.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle39735,
                            height: 32.h,
                            width: 32.h,
                            radius: BorderRadius.only(
                              topLeft: Radius.circular(16.h),
                              bottomLeft: Radius.circular(16.h),
                              bottomRight: Radius.circular(16.h),
                            ),
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              top: 2.h,
                            ),
                            child: Text(
                              "lbl_total_savings".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 8.h),
                            child: Text(
                              "lbl_00".tr,
                              style: theme.textTheme.headlineMedium,
                            ),
                          )
                        ],
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

  /// Section Widget
  Widget _buildBrandGiftCards() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_brand_gift_cards".tr,
                  style: CustomTextStyles.titleLargePrimary_1,
                ),
                SizedBox(width: 20.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: Divider(
                        color: theme.colorScheme.primary.withOpacity(0.22),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRow243812accoun();
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 4.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 14.h,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img243812Account,
                      height: 28.h,
                      width: 28.h,
                    ),
                    SizedBox(width: 18.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_my_brand_gift_cards".tr,
                            style: CustomTextStyles.titleMediumPrimaryMedium,
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "msg_track_all_your_purchased".tr,
                            style: CustomTextStyles.bodyLargeBluegray60001,
                          )
                        ],
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
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_transactions_history".tr,
                    style: CustomTextStyles.titleLargePrimary_1,
                  ),
                ),
                SizedBox(width: 20.h),
                Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: SizedBox(
                    width: 166.h,
                    child: Divider(
                      color: theme.colorScheme.primary.withOpacity(0.22),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: _buildJingitRewards(
              p021removebgone: ImageConstant.img243812Account,
              jingitrewards: "lbl_brand_cards".tr,
            ),
          ),
          SizedBox(height: 12.h),
          InkWell(
            onTap: onTapRewards,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 6.h),
              child: _buildJingitRewards(
                p021removebgone: ImageConstant.img021RemovebgPreview26x28,
                jingitrewards: "lbl_jingit_rewards".tr,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutJingit() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_about_jingit".tr,
                    style: CustomTextStyles.titleLargePrimary_1,
                  ),
                ),
                SizedBox(width: 22.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Divider(
                      color: theme.colorScheme.primary.withOpacity(0.22),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 26.h,
              vertical: 20.h,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img5402388Informa,
                  height: 26.h,
                  width: 26.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "lbl_about_us2".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlack900,
                  height: 16.h,
                  width: 10.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 4.h),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: _buildPrivacyPolicy(
              p9057073list: ImageConstant.img9057073ListIcon,
              privacypolicy: "msg_terms_of_services".tr,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: _buildPrivacyPolicy(
              p9057073list: ImageConstant.img9057073ListIcon,
              privacypolicy: "lbl_privacy_policy2".tr,
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: _buildJingitRewards(
              p021removebgone: ImageConstant.img021RemovebgPreview26x28,
              jingitrewards: "lbl_jingit_plans".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralInformation() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_general_information".tr,
                  style: CustomTextStyles.titleLargePrimary_1,
                ),
                SizedBox(width: 18.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Divider(
                        color: theme.colorScheme.primary.withOpacity(0.22),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            child: _buildPrivacyPolicy(
              p9057073list: ImageConstant.img1564529Mechani,
              privacypolicy: "lbl_settings".tr,
              onTapPrivacyPolicy: () {
                onTapSettings();
              },
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 4.h,
            ),
            child: _buildJingitRewards(
              p021removebgone: ImageConstant.img2639877OnlineSupportIcon,
              jingitrewards: "lbl_help_support".tr,
              onTapJingitRewards: () {
                onTapHelpSupport();
              },
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            margin: EdgeInsets.only(
              left: 8.h,
              right: 6.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 16.h,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup11,
                  height: 32.h,
                  width: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_notifications".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlack900,
                  height: 16.h,
                  width: 10.h,
                  margin: EdgeInsets.only(right: 4.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildJingitRewards({
    required String p021removebgone,
    required String jingitrewards,
    Function? onTapJingitRewards,
  }) {
    return GestureDetector(
      onTap: () {
        onTapJingitRewards?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 18.h,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: p021removebgone,
              height: 26.h,
              width: 28.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text(
                jingitrewards,
                style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlack900,
              height: 16.h,
              width: 10.h,
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPrivacyPolicy({
    required String p9057073list,
    required String privacypolicy,
    Function? onTapPrivacyPolicy,
  }) {
    return GestureDetector(
      onTap: () {
        onTapPrivacyPolicy?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 20.h,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: p9057073list,
              height: 24.h,
              width: 24.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text(
                privacypolicy,
                style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlack900,
              height: 16.h,
              width: 10.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 2.h),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTaparrow() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
  onTapRewards() {
    Get.toNamed(
      AppRoutes.rewardstrackerScreen,
    );
  }
  /// Navigates to the activecouponsScreen when the action is triggered.
  onTapRow243812accoun() {
    Get.toNamed(
      AppRoutes.activecouponsScreen,
    );
  }

  /// Navigates to the settinggsScreen when the action is triggered.
  onTapSettings() {
    Get.toNamed(
      AppRoutes.settinggsScreen,
    );
  }

  /// Navigates to the helpandsupportScreen when the action is triggered.
  onTapHelpSupport() {
    Get.toNamed(
      AppRoutes.helpandsupportScreen,
    );
  }
  onTapProfileDetails() {
    Get.toNamed(
      AppRoutes.profileDetailsScreen,
    );
  }
}
