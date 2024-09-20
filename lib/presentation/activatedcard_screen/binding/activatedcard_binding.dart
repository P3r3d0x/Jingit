import '../../../core/app_export.dart';
import '../controller/activatedcard_controller.dart';

/// A binding class for the ActivatedcardScreen.
///
/// This class ensures that the ActivatedcardController is created when the
/// ActivatedcardScreen is first loaded.
class ActivatedcardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivatedcardController());
  }
}
