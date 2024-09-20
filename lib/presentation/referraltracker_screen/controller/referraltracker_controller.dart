import '../../../core/app_export.dart';
import '../models/referraltracker_model.dart';

/// A controller class for the ReferraltrackerScreen.
///
/// This class manages the state of the ReferraltrackerScreen, including the
/// current referraltrackerModelObj
class ReferraltrackerController extends GetxController {
  Rx<ReferraltrackerModel> referraltrackerModelObj = ReferraltrackerModel().obs;
}
