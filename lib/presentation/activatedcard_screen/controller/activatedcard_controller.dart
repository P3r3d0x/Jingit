import '../../../core/app_export.dart';
import '../models/activatedcard_model.dart';

/// A controller class for the ActivatedcardScreen.
///
/// This class manages the state of the ActivatedcardScreen, including the
/// current activatedcardModelObj
class ActivatedcardController extends GetxController {
  Rx<ActivatedcardModel> activatedcardModelObj = ActivatedcardModel().obs;
}
