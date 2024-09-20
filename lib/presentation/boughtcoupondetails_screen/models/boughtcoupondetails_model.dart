import '../../../core/app_export.dart';
import 'itemlist_item_model.dart';

/// This class defines the variables used in the [boughtcoupondetails_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class BoughtcoupondetailsModel {
  Rx<List<ItemlistItemModel>> itemlistItemList = Rx([
    ItemlistItemModel(
        itemText: "Item".obs, itemImage: ImageConstant.imgImage74.obs),
    ItemlistItemModel(itemText: "Quantity".obs),
    ItemlistItemModel(itemText: "Worth".obs)
  ]);
}
