import '../../../core/app_export.dart';
import '../models/onboardingtwo_model.dart';

/// A controller class for the OnboardingtwoScreen.
///
/// This class manages the state of the OnboardingtwoScreen, including the
/// current onboardingtwoModelObj
class OnboardingtwoController extends GetxController {
  Rx<OnboardingtwoModel> onboardingtwoModelObj = OnboardingtwoModel().obs;
}
