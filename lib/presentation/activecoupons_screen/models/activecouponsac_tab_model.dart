import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class is used in the [activecouponsac_tab_page] screen.

// ignore_for_file: must_be_immutable
class ActivecouponsacTabModel {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList = Rx([
    Userprofilelist1ItemModel(
        brandCardImage: ImageConstant.imgGroup1000004472.obs,
        brandCardText: "4 Brand Card(s)".obs,
        brandName: "Flipkart".obs,
        brandPrice: "₹35,000".obs),
    Userprofilelist1ItemModel(),
    Userprofilelist1ItemModel(),
    Userprofilelist1ItemModel()
  ]);
}
