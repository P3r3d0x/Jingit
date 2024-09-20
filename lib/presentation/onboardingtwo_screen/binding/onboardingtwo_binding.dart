import '../../../core/app_export.dart';
import '../controller/onboardingtwo_controller.dart';

/// A binding class for the OnboardingtwoScreen.
///
/// This class ensures that the OnboardingtwoController is created when the
/// OnboardingtwoScreen is first loaded.
class OnboardingtwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingtwoController());
  }
}
