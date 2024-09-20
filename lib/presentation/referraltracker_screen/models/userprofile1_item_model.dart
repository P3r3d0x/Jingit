import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.

// ignore_for_file: must_be_immutable
class Userprofile1ItemModel {
  Userprofile1ItemModel(
      {this.dynamicTextProp,
      this.dynamicIconProp,
      this.dynamictextprop1,
      this.id}) {
    dynamicTextProp = dynamicTextProp ?? Rx("10");
    dynamicIconProp = dynamicIconProp ?? Rx(ImageConstant.imgGroup111);
    dynamictextprop1 = dynamictextprop1 ?? Rx("Total Referral Earning");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicTextProp;

  Rx<String>? dynamicIconProp;

  Rx<String>? dynamictextprop1;

  Rx<String>? id;
}
