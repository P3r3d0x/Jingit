import '../../../core/app_export.dart';

/// This class is used in the [itemlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ItemlistItemModel {
  ItemlistItemModel({this.itemText, this.itemImage, this.id}) {
    itemText = itemText ?? Rx("Item");
    itemImage = itemImage ?? Rx(ImageConstant.imgImage74);
    id = id ?? Rx("");
  }

  Rx<String>? itemText;

  Rx<String>? itemImage;

  Rx<String>? id;
}
