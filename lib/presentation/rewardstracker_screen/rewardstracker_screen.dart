import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/rewardstracker_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class RewardstrackerScreen extends GetWidget<RewardstrackerController> {
  const RewardstrackerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildRewardsSummary(),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 18.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_transtions_point".tr,
                          style: CustomTextStyles.titleLargeBlack900,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      _buildUserProfileList()
                    ],
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
  Widget _buildRewardsSummary() {
    return SizedBox(
      height: 310.h,
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
                      text: "lbl_jingit_rewards".tr,
                    ),
                  ),
                  SizedBox(height: 100.h)
                ],
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 216.h,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 14.h,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                        vertical: 16.h,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 54.h,
                                  width: 54.h,
                                  padding: EdgeInsets.all(8.h),
                                  decoration:
                                      IconButtonStyleHelper.fillAmberTL26,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup1000004530,
                                  ),
                                ),
                                SizedBox(width: 20.h),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_650_points".tr,
                                        style: CustomTextStyles
                                            .headlineSmallPrimary,
                                      ),
                                      Text(
                                        "msg_total_rewards_earned".tr,
                                        style: CustomTextStyles
                                            .titleLargePrimaryRegular,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 22.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              indent: 6.h,
                              endIndent: 4.h,
                            ),
                          ),
                          SizedBox(height: 22.h),
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 8.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_referral_code".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimaryRegular,
                                        ),
                                        SizedBox(height: 2.h),
                                        GestureDetector(
                                          onTap: () {
                                            onTapTxtWeburl();
                                          },
                                          child: Text(
                                            "msg_www_jingit_com_refer".tr,
                                            style: CustomTextStyles
                                                .titleLargePrimaryBold_1,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.h),
                                CustomElevatedButton(
                                  height: 30.h,
                                  width: 110.h,
                                  text: "lbl_share".tr,
                                  margin: EdgeInsets.only(top: 10.h),
                                  leftIcon: Container(
                                    margin: EdgeInsets.only(right: 4.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .img5402422linksharewebsendchainicon1,
                                      height: 18.h,
                                      width: 18.h,
                                    ),
                                  ),
                                  buttonStyle: CustomButtonStyles
                                      .outlinePrimaryContainer,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumBlue700,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h)
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
  Widget _buildUserProfileList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount: controller.rewardstrackerModelObj.value
                .userprofilelistItemList.value.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = controller.rewardstrackerModelObj
                  .value.userprofilelistItemList.value[index];
              return UserprofilelistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTaparrow() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  onTapTxtWeburl() {}
}
