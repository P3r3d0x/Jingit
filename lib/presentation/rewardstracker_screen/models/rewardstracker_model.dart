import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [rewardstracker_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RewardstrackerModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse2750x50.obs,
        username: "Rakesh Kumar Saini".obs,
        joinDate: "Joined on 30 Jun 2024".obs,
        text: "+20".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse273.obs,
        username: "Nilam Kumawat".obs,
        joinDate: "Joined on 30 Jun 2024".obs,
        text: "+20".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse274.obs,
        username: "Prakash Raj Singh".obs,
        joinDate: "Joined on 30 Jun 2024".obs,
        text: "-10".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse275.obs,
        username: "Jyoti Sharma".obs,
        joinDate: "Joined on 30 Jun 2024".obs,
        text: "+20".obs)
  ]);
}
