import '../../../core/app_export.dart';

/// This class is used in the [summarylist_item_widget] screen.

// ignore_for_file: must_be_immutable
class SummarylistItemModel {
  SummarylistItemModel({this.oneHundredFifty, this.total, this.id}) {
    oneHundredFifty = oneHundredFifty ?? Rx("150");
    total = total ?? Rx("Total Transactions");
    id = id ?? Rx("");
  }

  Rx<String>? oneHundredFifty;

  Rx<String>? total;

  Rx<String>? id;
}
