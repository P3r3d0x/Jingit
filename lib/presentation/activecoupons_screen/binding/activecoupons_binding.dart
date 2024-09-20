import '../../../core/app_export.dart';
import '../controller/activecoupons_controller.dart';

/// A binding class for the ActivecouponsScreen.
///
/// This class ensures that the ActivecouponsController is created when the
/// ActivecouponsScreen is first loaded.
class ActivecouponsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivecouponsController());
  }
}
