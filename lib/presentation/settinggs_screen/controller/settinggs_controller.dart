import '../../../core/app_export.dart';
import '../models/settinggs_model.dart';

/// A controller class for the SettinggsScreen.
///
/// This class manages the state of the SettinggsScreen, including the
/// current settinggsModelObj
class SettinggsController extends GetxController {
  Rx<SettinggsModel> settinggsModelObj = SettinggsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;
}
