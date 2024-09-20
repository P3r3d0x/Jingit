import '../../../core/app_export.dart';
import '../controller/settinggs_controller.dart';

/// A binding class for the SettinggsScreen.
///
/// This class ensures that the SettinggsController is created when the
/// SettinggsScreen is first loaded.
class SettinggsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettinggsController());
  }
}
