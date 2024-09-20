import '../../../core/app_export.dart';
import '../controller/referraltracker_controller.dart';

/// A binding class for the ReferraltrackerScreen.
///
/// This class ensures that the ReferraltrackerController is created when the
/// ReferraltrackerScreen is first loaded.
class ReferraltrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferraltrackerController());
  }
}
