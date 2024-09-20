import '../../../core/app_export.dart';

/// This class is used in the [columnview_item_widget] screen.

// ignore_for_file: must_be_immutable
class ColumnviewItemModel {
  ColumnviewItemModel({this.offerImage, this.id}) {
    offerImage = offerImage ?? Rx(ImageConstant.imgTelevisionWhiteA70042x80);
    id = id ?? Rx("");
  }

  Rx<String>? offerImage;

  Rx<String>? id;
}
