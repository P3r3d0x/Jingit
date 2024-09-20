import '../../../core/app_export.dart';
import '../controller/denominations_controller.dart';

/// A binding class for the DenominationsScreen.
///
/// This class ensures that the DenominationsController is created when the
/// DenominationsScreen is first loaded.
class DenominationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DenominationsController());
  }
}
