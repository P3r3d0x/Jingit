import '../../../core/app_export.dart';
import '../controller/onboardingthree_controller.dart';

/// A binding class for the OnboardingthreeScreen.
///
/// This class ensures that the OnboardingthreeController is created when the
/// OnboardingthreeScreen is first loaded.
class OnboardingthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingthreeController());
  }
}
