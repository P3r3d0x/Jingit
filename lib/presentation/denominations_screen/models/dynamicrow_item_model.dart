import '../../../core/app_export.dart';

/// This class is used in the [dynamicrow_item_widget] screen.

// ignore_for_file: must_be_immutable
class DynamicrowItemModel {
  DynamicrowItemModel(
      {this.amount, this.minusSign, this.number, this.plusSign, this.id}) {
    amount = amount ?? Rx("₹500");
    minusSign = minusSign ?? Rx("-");
    number = number ?? Rx("4");
    plusSign = plusSign ?? Rx("+");
    id = id ?? Rx("");
  }

  Rx<String>? amount;

  Rx<String>? minusSign;

  Rx<String>? number;

  Rx<String>? plusSign;

  Rx<String>? id;
}
