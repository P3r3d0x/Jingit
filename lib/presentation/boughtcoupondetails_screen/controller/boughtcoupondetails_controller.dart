import '../../../core/app_export.dart';
import '../models/boughtcoupondetails_model.dart';

/// A controller class for the BoughtcoupondetailsScreen.
///
/// This class manages the state of the BoughtcoupondetailsScreen, including the
/// current boughtcoupondetailsModelObj
class BoughtcoupondetailsController extends GetxController {
  Rx<BoughtcoupondetailsModel> boughtcoupondetailsModelObj =
      BoughtcoupondetailsModel().obs;
}
