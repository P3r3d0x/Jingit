import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class CardlistItemModel {
  CardlistItemModel(
      {this.cardImage, this.cardTitle, this.cardSubtitle, this.id}) {
    cardImage = cardImage ?? Rx(ImageConstant.imgEllipse27);
    cardTitle = cardTitle ?? Rx("₹10,000 Flipkart Card");
    cardSubtitle = cardSubtitle ?? Rx("30 Jun 2024 5:10 PM");
    id = id ?? Rx("");
  }

  Rx<String>? cardImage;

  Rx<String>? cardTitle;

  Rx<String>? cardSubtitle;

  Rx<String>? id;
}
