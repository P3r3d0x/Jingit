import '../../../core/app_export.dart';
import '../controller/helpandsupport_controller.dart';

/// A binding class for the HelpandsupportScreen.
///
/// This class ensures that the HelpandsupportController is created when the
/// HelpandsupportScreen is first loaded.
class HelpandsupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpandsupportController());
  }
}
