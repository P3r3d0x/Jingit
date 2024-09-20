import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/usersignin_model.dart';

/// A controller class for the UsersigninScreen.
///
/// This class manages the state of the UsersigninScreen, including the
/// current usersigninModelObj
class UsersigninController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<UsersigninModel> usersigninModelObj = UsersigninModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
  }
}
