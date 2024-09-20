import '../../../core/app_export.dart';

/// This class is used in the [rowpaywithanyte_item_widget] screen.

// ignore_for_file: must_be_immutable
class RowpaywithanyteItemModel {
  RowpaywithanyteItemModel({this.image, this.image1, this.id}) {
    image = image ?? Rx(ImageConstant.imgEllipse18);
    image1 = image1 ?? Rx(ImageConstant.imgArrowRightBlack90016x10);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? image1;

  Rx<String>? id;
}
