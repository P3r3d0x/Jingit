import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/activecoupons_model.dart';
import '../models/activecouponsac_tab_model.dart';

/// A controller class for the ActivecouponsScreen.
///
/// This class manages the state of the ActivecouponsScreen, including the
/// current activecouponsModelObj
class ActivecouponsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ActivecouponsModel> activecouponsModelObj = ActivecouponsModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  Rx<ActivecouponsacTabModel> activecouponsacTabModelObj =
      ActivecouponsacTabModel().obs;
}
