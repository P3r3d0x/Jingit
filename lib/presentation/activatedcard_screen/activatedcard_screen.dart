import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/activatedcard_controller.dart'; // ignore_for_file: must_be_immutable

class ActivatedcardScreen extends GetWidget<ActivatedcardController> {
  const ActivatedcardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 918.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildCardDetailsSection(),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 24.h,
                    ),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildActionButtons(),
                        SizedBox(height: 22.h),
                        _buildCardInfo(),
                        SizedBox(height: 196.h)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardDetailsSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 26.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup378,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(
              height: 28.h,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.img4829869ArrowNextRightIconWhiteA700,
                margin: EdgeInsets.only(left: 21.h),
                onTap: () {
                  onTaparrow();
                },
              ),
              centerTitle: true,
              title: AppbarTitle(
                text: "lbl_card_details".tr,
              ),
            ),
            SizedBox(height: 80.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 18.h,
                right: 14.h,
              ),
              child: Column(
                children: [
                  Text(
                    "msg_your_card_is_activated".tr,
                    style: CustomTextStyles.displaySmallWhiteA700,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "msg_start_enjoying".tr,
                    style: CustomTextStyles.headlineLargeWhiteA700Regular,
                  )
                ],
              ),
            ),
            SizedBox(height: 154.h)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomElevatedButton(
              height: 38.h,
              text: "lbl_send_as_gift".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.outlineBlackTL18,
              buttonTextStyle: CustomTextStyles.titleMediumBold,
              onPressed: () {
                onTapSendasgift();
              },
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(width: 10.h),
          CustomIconButton(
            height: 44.h,
            width: 44.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlineGrayF,
            child: CustomImageView(
              imagePath: ImageConstant.img5402422LinkSh,
            ),
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: CustomElevatedButton(
              height: 36.h,
              text: "lbl_how_to_use2".tr.toUpperCase(),
              buttonStyle: CustomButtonStyles.outlineBlackTL181,
              buttonTextStyle: CustomTextStyles.titleMediumBlack900Bold,
              onPressed: () {
                onTapHowtouse();
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 28.h,
      ),
      decoration: AppDecoration.outlineGray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 4.h),
            decoration: AppDecoration.fillRedA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage860x194,
                        height: 26.h,
                        width: 90.h,
                        margin: EdgeInsets.only(top: 8.h),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 52.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Text(
                                  "lbl_card_worth".tr,
                                  style: CustomTextStyles.bodyLargeWhiteA700,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "lbl_1000".tr,
                                    style: CustomTextStyles
                                        .headlineMediumExtraBold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgContrast,
                        height: 30.h,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 18.h),
                      ),
                      SizedBox(width: 22.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_card_number".tr,
                                style: CustomTextStyles.bodyLargeWhiteA700,
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "msg_0000_0000".tr,
                                        style: CustomTextStyles.titleMedium18,
                                      ),
                                    ),
                                    SizedBox(width: 24.h),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .img352285ContentCopyIconWhiteA700,
                                      height: 16.h,
                                      width: 16.h,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "lbl_pin_number".tr,
                                style: CustomTextStyles.bodyLargeWhiteA700,
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "lbl_852147".tr,
                                        style: CustomTextStyles.titleMedium18,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .img352285ContentCopyIconWhiteA700,
                                      height: 16.h,
                                      width: 16.h,
                                      margin: EdgeInsets.only(left: 52.h),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 22.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse16,
                        height: 30.h,
                        width: 8.h,
                        margin: EdgeInsets.only(top: 18.h),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 4.h,
                  ),
                  decoration: AppDecoration.fillRedA70001.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL16,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.h,
                        ),
                        child: Text(
                          "msg_expires_on_21_oct".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      CustomElevatedButton(
                        height: 26.h,
                        width: 112.h,
                        text: "lbl_i_ve_used_it".tr,
                        margin: EdgeInsets.only(top: 2.h),
                        buttonStyle: CustomButtonStyles.fillBlack,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeWhiteA700Bold,
                      )
                    ],
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

  /// Navigates to the paymentScreen when the action is triggered.
  onTapSendasgift() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapHowtouse() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }
}
