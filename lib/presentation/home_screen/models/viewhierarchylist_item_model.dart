import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel(
      {this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.image6,
      this.image7,
      this.image8,
      this.image9,
      this.image11,
      this.id}) {
    image1 = image1 ?? Rx(ImageConstant.imgFromBeansToBrews);
    image2 = image2 ?? Rx(ImageConstant.imgElevateYourCoffee);
    image3 = image3 ?? Rx(ImageConstant.imgSettingsWhiteA70010x84);
    image4 = image4 ?? Rx(ImageConstant.imgEllipse17);
    image5 = image5 ?? Rx(ImageConstant.imgSettings20x94);
    image6 = image6 ?? Rx(ImageConstant.imgTelevisionWhiteA700);
    image7 = image7 ?? Rx(ImageConstant.imgEllipse1750x50);
    image8 = image8 ?? Rx(ImageConstant.imgSettings20x94);
    image9 = image9 ?? Rx(ImageConstant.imgSettingsWhiteA70010x60);
    image11 = image11 ?? Rx(ImageConstant.imgSettings20x94);
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? image2;

  Rx<String>? image3;

  Rx<String>? image4;

  Rx<String>? image5;

  Rx<String>? image6;

  Rx<String>? image7;

  Rx<String>? image8;

  Rx<String>? image9;

  Rx<String>? image11;

  Rx<String>? id;
}
