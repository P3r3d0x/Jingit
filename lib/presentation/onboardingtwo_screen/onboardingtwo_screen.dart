import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/onboardingtwo_controller.dart'; // ignore_for_file: must_be_immutable

class OnboardingtwoScreen extends GetWidget<OnboardingtwoController> {
  const OnboardingtwoScreen({Key? key})
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
              height: 900.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 562.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [_buildCartSection(), _buildTravelSection()],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      bottom: 4.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserSection(),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_unbeatable_savings2".tr,
                                  style: theme.textTheme.headlineLarge,
                                ),
                                TextSpan(
                                  text: "lbl_online".tr,
                                  style: CustomTextStyles.headlineLargeLime600,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: theme.textTheme.headlineLarge,
                                ),
                                TextSpan(
                                  text: "lbl_in_store_brands".tr,
                                  style: CustomTextStyles.headlineLargePinkA200,
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 30.h),
                          child: Text(
                            "msg_across_fashion".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.bodyLargeBlack900_1.copyWith(
                              height: 1.75,
                            ),
                          ),
                        ),
                        SizedBox(height: 32.h),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
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
                        ),
                        SizedBox(height: 44.h),
                        CustomElevatedButton(
                          text: "lbl_login".tr.toUpperCase(),
                          margin: EdgeInsets.only(right: 22.h),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 12.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.img4829869arrownextrighticon61,
                              height: 28.h,
                              width: 28.h,
                            ),
                          ),
                          onPressed: () {
                            onTapLogin();
                          },
                        )
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 38.h,
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLayer2,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 12.h,
          bottom: 13.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCartSection() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 4.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup515,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 354.h,
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 8.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCart,
                    height: 40.h,
                    width: 40.h,
                    margin: EdgeInsets.only(
                      right: 14.h,
                      bottom: 34.h,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.h,
                    width: 18.h,
                    radius: BorderRadius.circular(
                      2.h,
                    ),
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 60.h,
                      top: 26.h,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 262.h,
                      width: 236.h,
                      padding: EdgeInsets.symmetric(horizontal: 26.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup976,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup1000004485,
                            height: 38.h,
                            width: 76.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 18.h,
                              right: 34.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgA7774837E7b44,
                            height: 162.h,
                            width: double.maxFinite,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 50.h,
                                right: 10.h,
                              ),
                              child: Text(
                                "lbl_shopping".tr.toUpperCase(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .headlineMediumExtraBold_1
                                    .copyWith(
                                  height: 1.42,
                                ),
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
                      height: 290.h,
                      width: 266.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup977,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 78.h,
                              margin: EdgeInsets.only(
                                left: 66.h,
                                top: 66.h,
                              ),
                              child: Text(
                                "lbl_food".tr.toUpperCase(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .headlineMediumExtraBold_1
                                    .copyWith(
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup1000004487,
                            height: 48.h,
                            width: 78.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 50.h,
                              top: 24.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPngtreeFastFood,
                            height: 216.h,
                            width: double.maxFinite,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 16.h,
                right: 12.h,
              ),
              padding: EdgeInsets.only(left: 26.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 52.h,
                    width: 52.h,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 8.h)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTravelSection() {
    return Container(
      height: 294.h,
      padding: EdgeInsets.only(right: 62.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 290.h,
              width: 266.h,
              padding: EdgeInsets.only(
                top: 32.h,
                right: 60.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup978,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 104.h,
                    margin: EdgeInsets.only(top: 28.h),
                    child: Text(
                      "lbl_travel".tr.toUpperCase(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.headlineMediumExtraBold_1.copyWith(
                        height: 1.42,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1000004488,
                    height: 46.h,
                    width: 78.h,
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage60,
            height: 226.h,
            width: 264.h,
            margin: EdgeInsets.only(right: 10.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 22.h),
      padding: EdgeInsets.symmetric(vertical: 26.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup64,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 370.h),
          CustomImageView(
            imagePath: ImageConstant.imgUserBlack900,
            height: 26.h,
            width: 26.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the onboardingthreeScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.onboardingthreeScreen,
    );
  }
}
