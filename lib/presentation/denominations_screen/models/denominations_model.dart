import '../../../core/app_export.dart';
import 'dynamicrow_item_model.dart';

/// This class defines the variables used in the [denominations_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class DenominationsModel {
  Rx<List<DynamicrowItemModel>> dynamicrowItemList = Rx([
    DynamicrowItemModel(
        amount: "₹500".obs,
        minusSign: "-".obs,
        number: "4".obs,
        plusSign: "+".obs),
    DynamicrowItemModel(
        amount: "₹1000".obs,
        minusSign: "-".obs,
        number: "4".obs,
        plusSign: "+".obs),
    DynamicrowItemModel(
        amount: "₹2000".obs,
        minusSign: "-".obs,
        number: "4".obs,
        plusSign: "+".obs),
    DynamicrowItemModel(
        amount: "₹10000".obs,
        minusSign: "-".obs,
        number: "4".obs,
        plusSign: "+".obs)
  ]);
}
