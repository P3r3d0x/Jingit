import '../../../core/app_export.dart';
import 'categorygrid_item_model.dart';

/// This class defines the variables used in the [category_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CategoryModel {
  Rx<List<CategorygridItemModel>> categorygridItemList = Rx([
    CategorygridItemModel(
        fashionText: "Fashion".obs,
        discountText: "Up to 10% Off".obs,
        image1: ImageConstant.imgRectangle39622.obs,
        image2: ImageConstant.imgPngwingCom3.obs),
    CategorygridItemModel(
        fashionText: "Travel".obs,
        discountText: "Up to 10% Off".obs,
        image2: ImageConstant.imgImage77.obs),
    CategorygridItemModel(
        fashionText: "Food".obs,
        discountText: "Up to 10% Off".obs,
        image1: ImageConstant.imgRectangle3962284x102.obs,
        image2: ImageConstant.imgImage78.obs),
    CategorygridItemModel(
        fashionText: "Home decor".obs,
        discountText: "Up to 10% Off".obs,
        image2: ImageConstant.imgPngwingCom394x80.obs),
    CategorygridItemModel(
        fashionText: "Accessories".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Hand bags".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Electronics".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Footwear".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Kids".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Entertainment".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Pharmacy".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Watches".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Hotels".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Groceres".obs, discountText: "Up to 10% Off".obs),
    CategorygridItemModel(
        fashionText: "Jewellry".obs,
        discountText: "Up to 10% Off".obs,
        image1: ImageConstant.imgRectangle3962284x102.obs,
        image2: ImageConstant.imgImage7892x84.obs),
    CategorygridItemModel(),
    CategorygridItemModel(),
    CategorygridItemModel()
  ]);
}
