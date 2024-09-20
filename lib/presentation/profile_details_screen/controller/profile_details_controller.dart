import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_details_model.dart';

/// A controller class for the ProfileDetailsScreen.
///
/// This class manages the state of the ProfileDetailsScreen, including the
/// current profileDetailsModelObj
class ProfileDetailsController extends GetxController {
  TextEditingController fullNameFieldController = TextEditingController();

  TextEditingController fullNameField1Controller = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController referralCodeFieldController = TextEditingController();

  Rx<ProfileDetailsModel> profileDetailsModelObj = ProfileDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameFieldController.dispose();
    fullNameField1Controller.dispose();
    emailFieldController.dispose();
    referralCodeFieldController.dispose();
  }
}
