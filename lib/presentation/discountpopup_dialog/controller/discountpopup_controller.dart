import '../../../core/app_export.dart';
import '../models/discountpopup_model.dart';

/// A controller class for the DiscountpopupDialog.
///
/// This class manages the state of the DiscountpopupDialog, including the
/// current discountpopupModelObj
class DiscountpopupController extends GetxController {
  Rx<DiscountpopupModel> discountpopupModelObj = DiscountpopupModel().obs;
}
