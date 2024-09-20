import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/onboardingthree_controller.dart'; // ignore_for_file: must_be_immutable

class OnboardingthreeScreen extends GetWidget<OnboardingthreeController> {
  const OnboardingthreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(14.h),
              child: Column(
                children: [
                  Container(
                    height: 696.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildSaveMoreSection(),
                        Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 516.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle39738,
                                      height: 196.h,
                                      width: 286.h,
                                      radius: BorderRadius.circular(
                                        20.h,
                                      ),
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 22.h),
                                    ),
                                    Container(
                                      height: 196.h,
                                      width: 286.h,
                                      margin: EdgeInsets.only(
                                        right: 34.h,
                                        bottom: 8.h,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.h),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: fs.Svg(
                                            ImageConstant.imgGroup451,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 26.h),
                                              child: Text(
                                                "lbl_instant_savings".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .headlineLargeWhiteA700Black_1
                                                    .copyWith(
                                                  height: 1.27,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "lbl_wide_selection".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .headlineMediumMedium
                                                .copyWith(
                                              height: 1.36,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        width: 282.h,
                                        margin: EdgeInsets.only(right: 8.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30.h,
                                          vertical: 32.h,
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: fs.Svg(
                                              ImageConstant.imgGroup127,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 12.h),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "lbl_top_brands".tr,
                                                    style: CustomTextStyles
                                                        .headlineLargeWhiteA700Black32,
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        "lbl_big_discounts".tr,
                                                    style: CustomTextStyles
                                                        .headlineLargeWhiteA700Medium,
                                                  )
                                                ],
                                              ),
                                              textAlign: TextAlign.center,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 208.h,
                                        margin: EdgeInsets.only(
                                          left: 60.h,
                                          top: 20.h,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_avail".tr,
                                                style: CustomTextStyles
                                                    .headlineLargeWhiteA700Black,
                                              ),
                                              TextSpan(
                                                text: "msg_discounts_up_to".tr,
                                                style: CustomTextStyles
                                                    .headlineLargeWhiteA700Medium_1,
                                              )
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCart,
                                      height: 40.h,
                                      width: 40.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(top: 176.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFavorite,
                                      height: 18.h,
                                      width: 18.h,
                                      radius: BorderRadius.circular(
                                        2.h,
                                      ),
                                      margin: EdgeInsets.only(right: 38.h),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 60.h),
                              CustomImageView(
                                imagePath: ImageConstant.imageNotFound,
                                height: 120.h,
                                width: 184.h,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 212.h),
                          child: CustomIconButton(
                            height: 60.h,
                            width: 60.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillPrimaryTL30,
                            alignment: Alignment.topLeft,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                            ),
                          ),
                        ),
                        _buildArrowSection(),
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoriteTeal900,
                          height: 70.h,
                          width: 30.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            bottom: 188.h,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgForward,
                          height: 18.h,
                          width: 18.h,
                          radius: BorderRadius.circular(
                            2.h,
                          ),
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 12.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUserBlue700,
                          height: 18.h,
                          width: 18.h,
                          radius: BorderRadius.circular(
                            2.h,
                          ),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 8.h),
                        )
                      ],
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
                  ),
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
  Widget _buildSaveMoreSection() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_save_more_with".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  TextSpan(
                    text: "lbl_every".tr,
                    style: CustomTextStyles.headlineLargePinkA200,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_purchase".tr,
                    style: CustomTextStyles.headlineLargeLime600,
                  )
                ],
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 14.h),
            Text(
              "msg_discover_and_save".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBlack900.copyWith(
                height: 1.75,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrow07,
              height: 124.h,
              width: 116.h,
            ),
            SizedBox(height: 124.h),
            CustomImageView(
              imagePath: ImageConstant.imgUserBlue700,
              height: 18.h,
              width: 18.h,
              radius: BorderRadius.circular(
                2.h,
              ),
              margin: EdgeInsets.only(right: 14.h),
            ),
            SizedBox(height: 32.h),
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 74.h,
              width: 46.h,
              margin: EdgeInsets.only(right: 6.h),
            )
          ],
        ),
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
        bottom: 34.h,
      ),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.img4829869arrownextrighticon61,
          height: 28.h,
          width: 28.h,
        ),
      ),
      onPressed: () {
        onTapLoginButton();
      },
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
