import '../../../core/app_export.dart';
import '../models/denominations_model.dart';

/// A controller class for the DenominationsScreen.
///
/// This class manages the state of the DenominationsScreen, including the
/// current denominationsModelObj
class DenominationsController extends GetxController {
  Rx<DenominationsModel> denominationsModelObj = DenominationsModel().obs;
}
