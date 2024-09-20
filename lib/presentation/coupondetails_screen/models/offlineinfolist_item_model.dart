import '../../../core/app_export.dart';

/// This class is used in the [offlineinfolist_item_widget] screen.

// ignore_for_file: must_be_immutable
class OfflineinfolistItemModel {
  OfflineinfolistItemModel(
      {this.offlineStoreIma, this.offlineStoreTex, this.id}) {
    offlineStoreIma =
        offlineStoreIma ?? Rx(ImageConstant.img8665817StoreShoppingIcon);
    offlineStoreTex = offlineStoreTex ?? Rx("Offline Store");
    id = id ?? Rx("");
  }

  Rx<String>? offlineStoreIma;

  Rx<String>? offlineStoreTex;

  Rx<String>? id;
}
