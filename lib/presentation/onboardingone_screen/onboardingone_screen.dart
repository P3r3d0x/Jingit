import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/onboardingone_controller.dart'; // ignore_for_file: must_be_immutable

class OnboardingoneScreen extends GetWidget<OnboardingoneController> {
  const OnboardingoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbarSection(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup801,
                    height: 528.h,
                    width: double.maxFinite,
                  ),
                  SizedBox(height: 26.h),
                  _buildExploreGiftSection(),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildLoginButton()],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbarSection() {
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
  Widget _buildExploreGiftSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_explore_gift_vouchers2".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                TextSpan(
                  text: "lbl_400".tr,
                  style: CustomTextStyles.headlineLargeLime600,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_brands".tr,
                  style: CustomTextStyles.headlineLargePinkA200,
                )
              ],
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 20.h),
          Text(
            "msg_find_the_perfect".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyLargeBlack900_1.copyWith(
              height: 1.75,
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            height: 8.h,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 4,
                activeDotColor: appTheme.lime600,
                dotColor: theme.colorScheme.primary,
                dotHeight: 8.h,
                dotWidth: 8.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
      text: "lbl_login".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 22.h,
        right: 22.h,
        bottom: 36.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 18.h),
        child: CustomImageView(
          imagePath: ImageConstant.img4829869arrownextrighticon61,
          height: 28.h,
          width: 28.h,
        ),

      ),
      onPressed: () {
        onTapLogin();
      },
    );
  }


  onTapLogin() {
    Get.toNamed(
      AppRoutes.onboardingtwoScreen,
    );
  }
}
