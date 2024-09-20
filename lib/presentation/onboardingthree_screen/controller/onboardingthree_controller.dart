import '../../../core/app_export.dart';
import '../models/onboardingthree_model.dart';

/// A controller class for the OnboardingthreeScreen.
///
/// This class manages the state of the OnboardingthreeScreen, including the
/// current onboardingthreeModelObj
class OnboardingthreeController extends GetxController {
  Rx<OnboardingthreeModel> onboardingthreeModelObj = OnboardingthreeModel().obs;
}
