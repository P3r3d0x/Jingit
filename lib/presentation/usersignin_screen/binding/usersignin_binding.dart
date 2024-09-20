import '../../../core/app_export.dart';
import '../controller/usersignin_controller.dart';

/// A binding class for the UsersigninScreen.
///
/// This class ensures that the UsersigninController is created when the
/// UsersigninScreen is first loaded.
class UsersigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersigninController());
  }
}
