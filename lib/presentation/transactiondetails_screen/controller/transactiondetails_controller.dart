import '../../../core/app_export.dart';
import '../models/transactiondetails_model.dart';

/// A controller class for the TransactiondetailsScreen.
///
/// This class manages the state of the TransactiondetailsScreen, including the
/// current transactiondetailsModelObj
class TransactiondetailsController extends GetxController {
  Rx<TransactiondetailsModel> transactiondetailsModelObj =
      TransactiondetailsModel().obs;
}
