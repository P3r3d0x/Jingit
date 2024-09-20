import '../../../core/app_export.dart';
import '../controller/rewardstracker_controller.dart';

/// A binding class for the RewardstrackerScreen.
///
/// This class ensures that the RewardstrackerController is created when the
/// RewardstrackerScreen is first loaded.
class RewardstrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewardstrackerController());
  }
}
