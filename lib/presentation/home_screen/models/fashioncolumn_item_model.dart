import '../../../core/app_export.dart';

/// This class is used in the [fashioncolumn_item_widget] screen.

// ignore_for_file: must_be_immutable
class FashioncolumnItemModel {
  FashioncolumnItemModel(
      {this.image1, this.image2, this.text1, this.text2, this.id}) {
    image1 = image1 ?? Rx(ImageConstant.imgRectangle39622);
    image2 = image2 ?? Rx(ImageConstant.imgPngwingCom3);
    text1 = text1 ?? Rx("Fashion");
    text2 = text2 ?? Rx("Up to 10% Off");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? id;
}
