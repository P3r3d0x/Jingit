import '../../../core/app_export.dart';
import '../controller/onboardingone_controller.dart';

/// A binding class for the OnboardingoneScreen.
///
/// This class ensures that the OnboardingoneController is created when the
/// OnboardingoneScreen is first loaded.
class OnboardingoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingoneController());
  }
}
