import '../../../core/app_export.dart';

/// This class is used in the [listtextprop_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListtextpropItemModel {
  ListtextpropItemModel({this.imageProp, this.imageProp1, this.id}) {
    imageProp = imageProp ?? Rx(ImageConstant.imgHome);
    imageProp1 = imageProp1 ?? Rx(ImageConstant.imgCloseWhiteA700);
    id = id ?? Rx("");
  }

  Rx<String>? imageProp;

  Rx<String>? imageProp1;

  Rx<String>? id;
}
