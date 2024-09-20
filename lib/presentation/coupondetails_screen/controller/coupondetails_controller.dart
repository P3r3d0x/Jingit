import '../../../core/app_export.dart';
import '../models/coupondetails_model.dart';

/// A controller class for the CoupondetailsScreen.
///
/// This class manages the state of the CoupondetailsScreen, including the
/// current coupondetailsModelObj
class CoupondetailsController extends GetxController {
  Rx<CoupondetailsModel> coupondetailsModelObj = CoupondetailsModel().obs;
}
