import '../../../core/app_export.dart';

/// This class is used in the [categorygrid_item_widget] screen.

// ignore_for_file: must_be_immutable
class CategorygridItemModel {
  CategorygridItemModel(
      {this.fashionText,
      this.discountText,
      this.image1,
      this.image2,
      this.id}) {
    fashionText = fashionText ?? Rx("Fashion");
    discountText = discountText ?? Rx("Up to 10% Off");
    image1 = image1 ?? Rx(ImageConstant.imgRectangle39622);
    image2 = image2 ?? Rx(ImageConstant.imgPngwingCom3);
    id = id ?? Rx("");
  }

  Rx<String>? fashionText;

  Rx<String>? discountText;

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? id;
}
