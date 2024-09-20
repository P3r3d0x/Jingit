import '../../../core/app_export.dart';
import '../models/rewards_model.dart';

/// A controller class for the RewardsBottomsheet.
///
/// This class manages the state of the RewardsBottomsheet, including the
/// current rewardsModelObj
class RewardsController extends GetxController {
  Rx<RewardsModel> rewardsModelObj = RewardsModel().obs;
}
