import '../../../core/app_export.dart';
import 'rowpaywithanyte_item_model.dart';

/// This class defines the variables used in the [payment_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class PaymentModel {
  Rx<List<RowpaywithanyteItemModel>> rowpaywithanyteItemList = Rx([
    RowpaywithanyteItemModel(
        image: ImageConstant.imgEllipse18.obs,
        image1: ImageConstant.imgArrowRightBlack90016x10.obs),
    RowpaywithanyteItemModel(
        image: ImageConstant.imgEllipse1840x40.obs,
        image1: ImageConstant.imgArrowRightBlack90016x10.obs),
    RowpaywithanyteItemModel(
        image: ImageConstant.imgEllipse181.obs,
        image1: ImageConstant.imgArrowRightBlack90016x10.obs),
    RowpaywithanyteItemModel(
        image: ImageConstant.imgEllipse182.obs,
        image1: ImageConstant.imgArrowRightBlack90016x10.obs),
    RowpaywithanyteItemModel(image1: ImageConstant.imgArrowRight.obs)
  ]);
}
