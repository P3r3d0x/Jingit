import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/referraltracker_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/userprofile1_item_widget.dart'; // ignore_for_file: must_be_immutable

class ReferraltrackerScreen extends GetWidget<ReferraltrackerController> {
  const ReferraltrackerScreen({Key? key})
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
                horizontal: 4.h,
                vertical: 22.h,
              ),
              child: Column(
                children: [
                  _buildUserProfileSection(),
                  SizedBox(height: 22.h),
                  SizedBox(
                    height: 556.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        IntrinsicHeight(
                          child: Container(
                            height: 556.h,
                            margin: EdgeInsets.only(
                              left: 14.h,
                              right: 10.h,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 4.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 18.h,
                                      vertical: 16.h,
                                    ),
                                    decoration:
                                        AppDecoration.fillWhiteA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 4.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Text(
                                            "msg_invite_your_friends".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .titleLargeBlack900
                                                .copyWith(
                                              height: 1.45,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          "msg_3_discount_upto".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                        SizedBox(height: 20.h),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          decoration: AppDecoration.outlineLime
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10,
                                          ),
                                          width: double.maxFinite,
                                          child: DottedBorder(
                                            color: appTheme.lime600,
                                            padding: EdgeInsets.only(
                                              left: 2.h,
                                              top: 2.h,
                                              right: 2.h,
                                              bottom: 2.h,
                                            ),
                                            strokeWidth: 2.h,
                                            radius: Radius.circular(10),
                                            borderType: BorderType.RRect,
                                            dashPattern: [4, 4],
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 20.h,
                                                vertical: 2.h,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                        height: 70.h,
                                                        margin: EdgeInsets.only(
                                                            top: 4.h),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Text(
                                                                "msg_your_referral_code"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargePoppinsBlack900,
                                                              ),
                                                            ),
                                                            Text(
                                                              "lbl_abcdg123".tr,
                                                              style: CustomTextStyles
                                                                  .headlineLargePoppins,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 18.h),
                                                  VerticalDivider(
                                                    width: 2.h,
                                                    thickness: 2.h,
                                                    color: appTheme.black900
                                                        .withOpacity(0.12),
                                                  ),
                                                  SizedBox(width: 18.h),
                                                  SizedBox(
                                                    width: 38.h,
                                                    child: Text(
                                                      "lbl_copy_code"
                                                          .tr
                                                          .toUpperCase(),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .titleSmallPoppinsBlack900
                                                          .copyWith(
                                                        height: 1.43,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                height: 52.h,
                                                width: 54.h,
                                                padding: EdgeInsets.all(12.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillLightBlue,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img4691501TelegramIcon,
                                                ),
                                              ),
                                              SizedBox(width: 8.h),
                                              CustomIconButton(
                                                height: 52.h,
                                                width: 54.h,
                                                padding: EdgeInsets.all(10.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillGreen,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .img3721678WhatsappIcon,
                                                ),
                                              ),
                                              SizedBox(width: 8.h),
                                              Expanded(
                                                child: Container(
                                                  height: 52.h,
                                                  decoration: AppDecoration
                                                      .fillLightBlueA
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10,
                                                  ),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .img5305153FbFacebookFacebook,
                                                        height: 26.h,
                                                        width: 26.h,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8.h),
                                              Expanded(
                                                child: Container(
                                                  height: 52.h,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle39695,
                                                        height: 52.h,
                                                        width: double.maxFinite,
                                                        radius: BorderRadius
                                                            .circular(
                                                          10.h,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgInfo,
                                                        height: 26.h,
                                                        width: 26.h,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8.h),
                                              CustomIconButton(
                                                height: 52.h,
                                                width: 54.h,
                                                padding: EdgeInsets.all(14.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillBlack,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 30.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(
                                            color: appTheme.gray40002,
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: Text(
                                              "msg_frequently_asked".tr,
                                              style: CustomTextStyles
                                                  .titleLargePoppinsBlack900,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 18.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(
                                            indent: 6.h,
                                            endIndent: 6.h,
                                          ),
                                        ),
                                        SizedBox(height: 14.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6.h),
                                          child: _buildFaqHowManyRefer(
                                            referralquestio:
                                                "msg_what_is_the_referral".tr,
                                          ),
                                        ),
                                        SizedBox(height: 12.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(
                                            indent: 6.h,
                                            endIndent: 6.h,
                                          ),
                                        ),
                                        SizedBox(height: 14.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6.h),
                                          child: _buildFaqHowManyRefer(
                                            referralquestio:
                                                "msg_how_many_people".tr,
                                          ),
                                        ),
                                        SizedBox(height: 12.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(
                                            indent: 6.h,
                                            endIndent: 6.h,
                                          ),
                                        ),
                                        SizedBox(height: 14.h),
                                        Container(
                                          width: double.maxFinite,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 6.h),
                                          child: _buildFaqHowManyRefer(
                                            referralquestio:
                                                "msg_how_do_i_share_my".tr,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 36.h,
                            width: 36.h,
                            margin: EdgeInsets.only(bottom: 218.h),
                            decoration: BoxDecoration(
                              color: appTheme.gray10002,
                              borderRadius: BorderRadius.circular(
                                18.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 36.h,
                            width: 36.h,
                            margin: EdgeInsets.only(bottom: 218.h),
                            decoration: BoxDecoration(
                              color: appTheme.gray10002,
                              borderRadius: BorderRadius.circular(
                                18.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h)
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
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_refer_earn".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 184.h,
            width: 382.h,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(right: 8.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 18.h,
                  );
                },
                itemCount: controller.referraltrackerModelObj.value
                    .userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller
                      .referraltrackerModelObj
                      .value
                      .userprofile1ItemList
                      .value[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFaqHowManyRefer({required String referralquestio}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            referralquestio,
            style: CustomTextStyles.bodyMediumPoppinsBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPlus,
          height: 14.h,
          width: 14.h,
        )
      ],
    );
  }
}
