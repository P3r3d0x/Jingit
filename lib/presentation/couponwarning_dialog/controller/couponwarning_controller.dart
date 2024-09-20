import '../../../core/app_export.dart';
import '../models/couponwarning_model.dart';

/// A controller class for the CouponwarningDialog.
///
/// This class manages the state of the CouponwarningDialog, including the
/// current couponwarningModelObj
class CouponwarningController extends GetxController {
  Rx<CouponwarningModel> couponwarningModelObj = CouponwarningModel().obs;
}
