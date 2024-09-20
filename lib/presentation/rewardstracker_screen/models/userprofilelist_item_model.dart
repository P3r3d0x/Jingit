import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.

// ignore_for_file: must_be_immutable
class UserprofilelistItemModel {
  UserprofilelistItemModel(
      {this.userImage, this.username, this.joinDate, this.text, this.id}) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse2750x50);
    username = username ?? Rx("Rakesh Kumar Saini");
    joinDate = joinDate ?? Rx("Joined on 30 Jun 2024");
    text = text ?? Rx("+20");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? username;

  Rx<String>? joinDate;

  Rx<String>? text;

  Rx<String>? id;
}
