import '../../../core/app_export.dart';
import 'columnview_item_model.dart';
import 'fashioncolumn_item_model.dart';
import 'listrectangle_item_model.dart';
import 'listtextprop_item_model.dart';
import 'userprofile_item_model.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HomeModel {
  Rx<List<FashioncolumnItemModel>> fashioncolumnItemList = Rx([
    FashioncolumnItemModel(
        image1: ImageConstant.imgRectangle39622.obs,
        image2: ImageConstant.imgPngwingCom3.obs,
        text1: "Fashion".obs,
        text2: "Up to 10% Off".obs),
    FashioncolumnItemModel(
        image1: ImageConstant.imgRectangle3962284x102.obs,
        image2: ImageConstant.imgImage78.obs,
        text1: "Food".obs,
        text2: "Up to 10% Off".obs),
    FashioncolumnItemModel()
  ]);

  Rx<List<ListrectangleItemModel>> listrectangleItemList = Rx([
    ListrectangleItemModel(rectangle: ImageConstant.imgRectangle39625.obs),
    ListrectangleItemModel(rectangle: ImageConstant.imgRectangle39624.obs),
    ListrectangleItemModel()
  ]);

  Rx<List<ColumnviewItemModel>> columnviewItemList = Rx([
    ColumnviewItemModel(
        offerImage: ImageConstant.imgTelevisionWhiteA70042x80.obs),
    ColumnviewItemModel(offerImage: ImageConstant.imgImage8.obs),
    ColumnviewItemModel(),
    ColumnviewItemModel(),
    ColumnviewItemModel(),
    ColumnviewItemModel()
  ]);

  Rx<List<ListtextpropItemModel>> listtextpropItemList = Rx([
    ListtextpropItemModel(
        imageProp: ImageConstant.imgHome.obs,
        imageProp1: ImageConstant.imgCloseWhiteA700.obs),
    ListtextpropItemModel(
        imageProp: ImageConstant.imgSettingsWhiteA700.obs,
        imageProp1: ImageConstant.imgCloseWhiteA700.obs),
    ListtextpropItemModel(
        imageProp: ImageConstant.imgSettingsWhiteA70010x54.obs,
        imageProp1: ImageConstant.imgImage25.obs)
  ]);

  Rx<List<ViewhierarchylistItemModel>> viewhierarchylistItemList = Rx([
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgFromBeansToBrews.obs,
        image2: ImageConstant.imgElevateYourCoffee.obs,
        image3: ImageConstant.imgSettingsWhiteA70010x84.obs,
        image4: ImageConstant.imgEllipse17.obs,
        image5: ImageConstant.imgSettings20x94.obs,
        image6: ImageConstant.imgTelevisionWhiteA700.obs,
        image7: ImageConstant.imgEllipse1750x50.obs,
        image8: ImageConstant.imgSettings20x94.obs,
        image9: ImageConstant.imgSettingsWhiteA70010x60.obs,
        image11: ImageConstant.imgSettings20x94.obs),
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgBeautyEssentials.obs,
        image2: ImageConstant.imgGiftCardForEvery.obs,
        image3: ImageConstant.imgSettingsWhiteA70010x58.obs,
        image4: ImageConstant.imgEllipse171.obs,
        image5: ImageConstant.imgSettings1.obs,
        image6: ImageConstant.imgSettingsWhiteA70010x62.obs,
        image8: ImageConstant.imgSettings1.obs,
        image9: ImageConstant.imgSettingsWhiteA70010x60.obs,
        image11: ImageConstant.imgSettings1.obs),
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgTechSavySavings.obs,
        image2: ImageConstant.imgEnjoyElectronic.obs,
        image3: ImageConstant.imgSettingsWhiteA70010x68.obs,
        image4: ImageConstant.imgCloseWhiteA700.obs,
        image5: ImageConstant.imgSettings2.obs,
        image6: ImageConstant.imgClock.obs,
        image7: ImageConstant.imgCloseWhiteA700.obs,
        image8: ImageConstant.imgSettings2.obs,
        image9: ImageConstant.imgSettingsWhiteA70010x50.obs,
        image11: ImageConstant.imgSettings2.obs),
    ViewhierarchylistItemModel(
        image1: ImageConstant.imgTasteTheWorld.obs,
        image2: ImageConstant.imgExploreCuisine.obs,
        image3: ImageConstant.imgSettingsWhiteA70010x44.obs,
        image4: ImageConstant.imgEllipse172.obs,
        image5: ImageConstant.imgSettings3.obs,
        image6: ImageConstant.imgSettingsWhiteA70010x56.obs,
        image7: ImageConstant.imgCloseWhiteA700.obs,
        image8: ImageConstant.imgSettings3.obs,
        image9: ImageConstant.imgSettings10x84.obs,
        image11: ImageConstant.imgSettings3.obs)
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        dynamicproperty: ImageConstant.imgImage8.obs,
        dynamicproperty1: ImageConstant.imgSettingsBlack90018x72.obs,
        dynamicproperty2: ImageConstant.imgSettingsGreen700.obs,
        dynamicproperty3: "Entertainment                      online".obs),
    UserprofileItemModel(
        dynamicproperty1: ImageConstant.imgSettingsBlack90022x76.obs,
        dynamicproperty2: ImageConstant.imgSettingsGreen700.obs,
        dynamicproperty3: "Entertainment                      online".obs),
    UserprofileItemModel()
  ]);
}
