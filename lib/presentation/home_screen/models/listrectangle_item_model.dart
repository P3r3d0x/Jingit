import '../../../core/app_export.dart';

/// This class is used in the [listrectangle_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListrectangleItemModel {
  ListrectangleItemModel({this.rectangle, this.id}) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle39625);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
