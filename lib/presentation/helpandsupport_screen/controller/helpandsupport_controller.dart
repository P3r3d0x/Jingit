import '../../../core/app_export.dart';
import '../models/helpandsupport_model.dart';

/// A controller class for the HelpandsupportScreen.
///
/// This class manages the state of the HelpandsupportScreen, including the
/// current helpandsupportModelObj
class HelpandsupportController extends GetxController {
  Rx<HelpandsupportModel> helpandsupportModelObj = HelpandsupportModel().obs;
}
