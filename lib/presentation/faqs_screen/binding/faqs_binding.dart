import '../../../core/app_export.dart';
import '../controller/faqs_controller.dart';

/// A binding class for the FaqsScreen.
///
/// This class ensures that the FaqsController is created when the
/// FaqsScreen is first loaded.
class FaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqsController());
  }
}
