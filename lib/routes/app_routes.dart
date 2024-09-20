import '../core/app_export.dart';
import '../presentation/activatedcard_screen/activatedcard_screen.dart';
import '../presentation/activatedcard_screen/binding/activatedcard_binding.dart';
import '../presentation/activecoupons_screen/activecoupons_screen.dart';
import '../presentation/activecoupons_screen/binding/activecoupons_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/boughtcoupondetails_screen/binding/boughtcoupondetails_binding.dart';
import '../presentation/boughtcoupondetails_screen/boughtcoupondetails_screen.dart';
import '../presentation/category_screen/binding/category_binding.dart';
import '../presentation/category_screen/category_screen.dart';
import '../presentation/coupondetails_screen/binding/coupondetails_binding.dart';
import '../presentation/coupondetails_screen/coupondetails_screen.dart';
import '../presentation/denominations_screen/binding/denominations_binding.dart';
import '../presentation/denominations_screen/denominations_screen.dart';
import '../presentation/faqs_screen/binding/faqs_binding.dart';
import '../presentation/faqs_screen/faqs_screen.dart';
import '../presentation/helpandsupport_screen/binding/helpandsupport_binding.dart';
import '../presentation/helpandsupport_screen/helpandsupport_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/onboardingone_screen/binding/onboardingone_binding.dart';
import '../presentation/onboardingone_screen/onboardingone_screen.dart';
import '../presentation/onboardingthree_screen/binding/onboardingthree_binding.dart';
import '../presentation/onboardingthree_screen/onboardingthree_screen.dart';
import '../presentation/onboardingtwo_screen/binding/onboardingtwo_binding.dart';
import '../presentation/onboardingtwo_screen/onboardingtwo_screen.dart';
import '../presentation/otp_screen/binding/otp_binding.dart';
import '../presentation/otp_screen/otp_screen.dart';
import '../presentation/payment_screen/binding/payment_binding.dart';
import '../presentation/payment_screen/payment_screen.dart';
import '../presentation/profile_details_screen/binding/profile_details_binding.dart';
import '../presentation/profile_details_screen/profile_details_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/referraltracker_screen/binding/referraltracker_binding.dart';
import '../presentation/referraltracker_screen/referraltracker_screen.dart';
import '../presentation/rewardstracker_screen/binding/rewardstracker_binding.dart';
import '../presentation/rewardstracker_screen/rewardstracker_screen.dart';
import '../presentation/settinggs_screen/binding/settinggs_binding.dart';
import '../presentation/settinggs_screen/settinggs_screen.dart';
import '../presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import '../presentation/splashscreen_screen/splashscreen_screen.dart';
import '../presentation/transactiondetails_screen/binding/transactiondetails_binding.dart';
import '../presentation/transactiondetails_screen/transactiondetails_screen.dart';
import '../presentation/usersignin_screen/binding/usersignin_binding.dart';
import '../presentation/usersignin_screen/usersignin_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String onboardingoneScreen = '/onboardingone_screen';

  static const String onboardingtwoScreen = '/onboardingtwo_screen';

  static const String onboardingthreeScreen = '/onboardingthree_screen';

  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String usersigninScreen = '/usersignin_screen';

  static const String homeScreen = '/home_screen';

  static const String categoryScreen = '/category_screen';

  static const String settinggsScreen = '/settinggs_screen';

  static const String profileDetailsScreen = '/profile_details_screen';

  static const String referraltrackerScreen = '/referraltracker_screen';

  static const String coupondetailsScreen = '/coupondetails_screen';

  static const String denominationsScreen = '/denominations_screen';

  static const String paymentScreen = '/payment_screen';

  static const String profileScreen = '/profile_screen';

  static const String transactiondetailsScreen = '/transactiondetails_screen';

  static const String rewardstrackerScreen = '/rewardstracker_screen';

  static const String boughtcoupondetailsScreen = '/boughtcoupondetails_screen';

  static const String activecouponsScreen = '/activecoupons_screen';

  static const String activecouponsacTabPage = '/activecouponsac_tab_page';

  static const String helpandsupportScreen = '/helpandsupport_screen';

  static const String faqsScreen = '/faqs_screen';

  static const String activatedcardScreen = '/activatedcard_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [SplashscreenBinding()],
    ),
    GetPage(
      name: onboardingoneScreen,
      page: () => OnboardingoneScreen(),
      bindings: [OnboardingoneBinding()],
    ),
    GetPage(
      name: onboardingtwoScreen,
      page: () => OnboardingtwoScreen(),
      bindings: [OnboardingtwoBinding()],
    ),
    GetPage(
      name: onboardingthreeScreen,
      page: () => OnboardingthreeScreen(),
      bindings: [OnboardingthreeBinding()],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [OtpBinding()],
    ),
    GetPage(
      name: usersigninScreen,
      page: () => UsersigninScreen(),
      bindings: [UsersigninBinding()],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: categoryScreen,
      page: () => CategoryScreen(),
      bindings: [CategoryBinding()],
    ),
    GetPage(
      name: settinggsScreen,
      page: () => SettinggsScreen(),
      bindings: [SettinggsBinding()],
    ),
    GetPage(
      name: profileDetailsScreen,
      page: () => ProfileDetailsScreen(),
      bindings: [ProfileDetailsBinding()],
    ),
    GetPage(
      name: referraltrackerScreen,
      page: () => ReferraltrackerScreen(),
      bindings: [ReferraltrackerBinding()],
    ),
    GetPage(
      name: coupondetailsScreen,
      page: () => CoupondetailsScreen(),
      bindings: [CoupondetailsBinding()],
    ),
    GetPage(
      name: denominationsScreen,
      page: () => DenominationsScreen(),
      bindings: [DenominationsBinding()],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [PaymentBinding()],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [ProfileBinding()],
    ),
    GetPage(
      name: transactiondetailsScreen,
      page: () => TransactiondetailsScreen(),
      bindings: [TransactiondetailsBinding()],
    ),
    GetPage(
      name: rewardstrackerScreen,
      page: () => RewardstrackerScreen(),
      bindings: [RewardstrackerBinding()],
    ),
    GetPage(
      name: boughtcoupondetailsScreen,
      page: () => BoughtcoupondetailsScreen(),
      bindings: [BoughtcoupondetailsBinding()],
    ),
    GetPage(
      name: activecouponsScreen,
      page: () => ActivecouponsScreen(),
      bindings: [ActivecouponsBinding()],
    ),
    GetPage(
      name: helpandsupportScreen,
      page: () => HelpandsupportScreen(),
      bindings: [HelpandsupportBinding()],
    ),
    GetPage(
      name: faqsScreen,
      page: () => FaqsScreen(),
      bindings: [FaqsBinding()],
    ),
    GetPage(
      name: activatedcardScreen,
      page: () => ActivatedcardScreen(),
      bindings: [ActivatedcardBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashscreenScreen(),
      bindings: [SplashscreenBinding()],
    )
  ];
}
