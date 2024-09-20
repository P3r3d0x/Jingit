import '../../../core/app_export.dart';
import '../models/rewardstracker_model.dart';

/// A controller class for the RewardstrackerScreen.
///
/// This class manages the state of the RewardstrackerScreen, including the
/// current rewardstrackerModelObj
class RewardstrackerController extends GetxController {
  Rx<RewardstrackerModel> rewardstrackerModelObj = RewardstrackerModel().obs;
}
