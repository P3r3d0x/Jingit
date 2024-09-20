import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.dynamicproperty,
      this.dynamicproperty1,
      this.dynamicproperty2,
      this.dynamicproperty3,
      this.id}) {
    dynamicproperty = dynamicproperty ?? Rx(ImageConstant.imgImage8);
    dynamicproperty1 =
        dynamicproperty1 ?? Rx(ImageConstant.imgSettingsBlack90018x72);
    dynamicproperty2 =
        dynamicproperty2 ?? Rx(ImageConstant.imgSettingsGreen700);
    dynamicproperty3 =
        dynamicproperty3 ?? Rx("Entertainment                      online");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicproperty;

  Rx<String>? dynamicproperty1;

  Rx<String>? dynamicproperty2;

  Rx<String>? dynamicproperty3;

  Rx<String>? id;
}
