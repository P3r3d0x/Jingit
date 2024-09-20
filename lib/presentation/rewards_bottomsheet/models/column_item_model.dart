import '../../../core/app_export.dart';

/// This class is used in the [column_item_widget] screen.

// ignore_for_file: must_be_immutable
class ColumnItemModel {
  ColumnItemModel({this.text1, this.image2, this.text2, this.id}) {
    text1 = text1 ?? Rx("up to 100");
    image2 = image2 ?? Rx(ImageConstant.imgGroup1000004498);
    text2 = text2 ?? Rx("Shop For 2000 Before 1st July To Unlock");
    id = id ?? Rx("");
  }

  Rx<String>? text1;

  Rx<String>? image2;

  Rx<String>? text2;

  Rx<String>? id;
}
