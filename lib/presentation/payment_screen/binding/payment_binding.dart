import '../../../core/app_export.dart';
import '../controller/payment_controller.dart';

/// A binding class for the PaymentScreen.
///
/// This class ensures that the PaymentController is created when the
/// PaymentScreen is first loaded.
class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
