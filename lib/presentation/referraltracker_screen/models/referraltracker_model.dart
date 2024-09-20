import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [referraltracker_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ReferraltrackerModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        dynamicTextProp: "10".obs,
        dynamicIconProp: ImageConstant.imgGroup111.obs,
        dynamictextprop1: "Total Referral Earning".obs),
    Userprofile1ItemModel(dynamictextprop1: "View Referrals".obs)
  ]);
}
