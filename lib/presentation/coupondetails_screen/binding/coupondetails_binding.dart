import '../../../core/app_export.dart';
import '../controller/coupondetails_controller.dart';

/// A binding class for the CoupondetailsScreen.
///
/// This class ensures that the CoupondetailsController is created when the
/// CoupondetailsScreen is first loaded.
class CoupondetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoupondetailsController());
  }
}
