import '../../../core/app_export.dart';
import '../controller/transactiondetails_controller.dart';

/// A binding class for the TransactiondetailsScreen.
///
/// This class ensures that the TransactiondetailsController is created when the
/// TransactiondetailsScreen is first loaded.
class TransactiondetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactiondetailsController());
  }
}
