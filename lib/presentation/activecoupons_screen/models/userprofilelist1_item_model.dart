import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.

// ignore_for_file: must_be_immutable
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel(
      {this.brandCardImage,
      this.brandCardText,
      this.brandName,
      this.brandPrice,
      this.id}) {
    brandCardImage = brandCardImage ?? Rx(ImageConstant.imgGroup1000004472);
    brandCardText = brandCardText ?? Rx("4 Brand Card(s)");
    brandName = brandName ?? Rx("Flipkart");
    brandPrice = brandPrice ?? Rx("₹35,000");
    id = id ?? Rx("");
  }

  Rx<String>? brandCardImage;

  Rx<String>? brandCardText;

  Rx<String>? brandName;

  Rx<String>? brandPrice;

  Rx<String>? id;
}
