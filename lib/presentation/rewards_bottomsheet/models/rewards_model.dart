import '../../../core/app_export.dart';
import 'column_item_model.dart';

/// This class defines the variables used in the [rewards_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RewardsModel {
  Rx<List<ColumnItemModel>> columnItemList = Rx([
    ColumnItemModel(
        text1: "up to 100".obs,
        image2: ImageConstant.imgGroup1000004498.obs,
        text2: "Shop For 2000 Before 1st July To Unlock".obs),
    ColumnItemModel(text1: " Pending Points".obs)
  ]);
}
