import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';
import 'summarylist_item_model.dart';

/// This class defines the variables used in the [transactiondetails_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class TransactiondetailsModel {
  Rx<List<SummarylistItemModel>> summarylistItemList = Rx([
    SummarylistItemModel(
        oneHundredFifty: "150".obs, total: "Total Transactions".obs),
    SummarylistItemModel(
        oneHundredFifty: "₹2000".obs, total: "This Month's Savings".obs)
  ]);

  Rx<List<CardlistItemModel>> cardlistItemList = Rx([
    CardlistItemModel(
        cardImage: ImageConstant.imgEllipse27.obs,
        cardTitle: "₹10,000 Flipkart Card".obs,
        cardSubtitle: "30 Jun 2024 5:10 PM".obs),
    CardlistItemModel(
        cardImage: ImageConstant.imgEllipse271.obs,
        cardTitle: "₹600 Zomato Card".obs,
        cardSubtitle: "30 Jun 2024 5:10 PM".obs),
    CardlistItemModel(
        cardImage: ImageConstant.imgEllipse272.obs,
        cardTitle: "₹12,000 Starbucks Card".obs,
        cardSubtitle: "30 Jun 2024 5:10 PM".obs),
    CardlistItemModel(
        cardImage: ImageConstant.imgEllipse27.obs,
        cardTitle: "₹10,000 Flipkart Card".obs,
        cardSubtitle: "30 Jun 2024 5:10 PM".obs),
    CardlistItemModel(),
    CardlistItemModel()
  ]);
}
