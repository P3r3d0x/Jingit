import '../../../core/app_export.dart';
import '../controller/boughtcoupondetails_controller.dart';

/// A binding class for the BoughtcoupondetailsScreen.
///
/// This class ensures that the BoughtcoupondetailsController is created when the
/// BoughtcoupondetailsScreen is first loaded.
class BoughtcoupondetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoughtcoupondetailsController());
  }
}
