import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../couponwarning_dialog/controller/couponwarning_controller.dart';
import '../couponwarning_dialog/couponwarning_dialog.dart';
import '../discountpopup_dialog/controller/discountpopup_controller.dart';
import '../discountpopup_dialog/discountpopup_dialog.dart';
import '../rewards_bottomsheet/controller/rewards_controller.dart';
import '../rewards_bottomsheet/rewards_bottomsheet.dart';
import 'controller/app_navigation_controller.dart'; // ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "SplashScreen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashscreenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OnboardingOne",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OnboardingTwo",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingtwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OnBoardingThree",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingthreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OTP",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "UserSignIn",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.usersigninScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Category",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.categoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settinggs",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settinggsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Details",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ReferralTracker",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.referraltrackerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "CouponDetails",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.coupondetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Denominations",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.denominationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TransactionDetails",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactiondetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "RewardsTracker",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.rewardstrackerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "BoughtCouponDetails",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.boughtcoupondetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Rewards - BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(context,
                              RewardsBottomsheet(Get.put(RewardsController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ActiveCoupons",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activecouponsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "HelpAndSupport",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpandsupportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQs",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ActivatedCard",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.activatedcardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "CouponWarning - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              CouponwarningDialog(
                                  Get.put(CouponwarningController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "DiscountPopup - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              DiscountpopupDialog(
                                  Get.put(DiscountpopupController()))),
                        )
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

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
