import '../../../core/app_export.dart';
import 'expandableinfo_item_model.dart';
import 'offlineinfolist_item_model.dart';

/// This class defines the variables used in the [coupondetails_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CoupondetailsModel {
  Rx<List<OfflineinfolistItemModel>> offlineinfolistItemList = Rx([
    OfflineinfolistItemModel(
        offlineStoreIma: ImageConstant.img8665817StoreShoppingIcon.obs,
        offlineStoreTex: "Offline Store".obs),
    OfflineinfolistItemModel(
        offlineStoreIma: ImageConstant.img3669275RedeemIcIcon.obs,
        offlineStoreTex: "Can club with offers".obs),
    OfflineinfolistItemModel(
        offlineStoreIma: ImageConstant.imgCheckmarkBlueGray60002.obs,
        offlineStoreTex: "Multi gift cards can be aalied".obs)
  ]);

  Rx<List<ExpandableinfoItemModel>> expandableinfoItemList =
      Rx(List.generate(3, (index) => ExpandableinfoItemModel()));
}
