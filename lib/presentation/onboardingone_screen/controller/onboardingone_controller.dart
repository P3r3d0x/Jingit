import '../../../core/app_export.dart';
import '../models/onboardingone_model.dart';

/// A controller class for the OnboardingoneScreen.
///
/// This class manages the state of the OnboardingoneScreen, including the
/// current onboardingoneModelObj
class OnboardingoneController extends GetxController {
  Rx<OnboardingoneModel> onboardingoneModelObj = OnboardingoneModel().obs;
}
