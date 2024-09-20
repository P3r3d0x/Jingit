import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/home_controller.dart';
import '../models/viewhierarchylist_item_model.dart';

// ignore_for_file: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(this.viewhierarchylistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return _buildViewHierarchy();
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: viewhierarchylistItemModelObj.image1!.value,
              height: 18.h,
              width: 250.h,
              margin: EdgeInsets.only(left: 6.h),
            ),
          ),
          SizedBox(height: 18.h),
          Obx(
            () => CustomImageView(
              imagePath: viewhierarchylistItemModelObj.image2!.value,
              height: 14.h,
              width: 340.h,
              margin: EdgeInsets.only(left: 6.h),
            ),
          ),
          SizedBox(height: 18.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: AppDecoration.fillTeal400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.h),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                viewhierarchylistItemModelObj.image3!.value,
                            height: 10.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 16.h),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_2".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: "lbl_off".tr.toUpperCase(),
                                style: theme.textTheme.titleMedium,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              ),
                              Obx(
                                () => CustomImageView(
                                  imagePath: viewhierarchylistItemModelObj
                                      .image4!.value,
                                  height: 50.h,
                                  width: 50.h,
                                  radius: BorderRadius.circular(
                                    24.h,
                                  ),
                                ),
                              ),
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Obx(
                          () => CustomIconButton(
                            height: 20.h,
                            width: 94.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillTeal,
                            child: CustomImageView(
                              imagePath:
                                  viewhierarchylistItemModelObj.image5!.value,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 14.h),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: AppDecoration.fillRed400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.h),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                viewhierarchylistItemModelObj.image6!.value,
                            height: 10.h,
                            width: 24.h,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_2".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: "lbl_off".tr.toUpperCase(),
                                style: theme.textTheme.titleMedium,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              ),
                              Obx(
                                () => CustomImageView(
                                  imagePath: viewhierarchylistItemModelObj
                                      .image7!.value,
                                  height: 50.h,
                                  width: 50.h,
                                  radius: BorderRadius.circular(
                                    24.h,
                                  ),
                                ),
                              ),
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Obx(
                          () => CustomIconButton(
                            height: 20.h,
                            width: 94.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillRedTL10,
                            child: CustomImageView(
                              imagePath:
                                  viewhierarchylistItemModelObj.image8!.value,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 14.h),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.h),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                viewhierarchylistItemModelObj.image9!.value,
                            height: 10.h,
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 28.h),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_2".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: "lbl_off".tr.toUpperCase(),
                                style: theme.textTheme.titleMedium,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseWhiteA700,
                                height: 50.h,
                                width: 50.h,
                              ),
                              Container(
                                height: 16.h,
                                width: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.teal50,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.h),
                                    topRight: Radius.circular(2.h),
                                    bottomLeft: Radius.circular(2.h),
                                    bottomRight: Radius.circular(4.h),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Obx(
                          () => CustomIconButton(
                            height: 20.h,
                            width: 94.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillWhiteA,
                            child: CustomImageView(
                              imagePath:
                                  viewhierarchylistItemModelObj.image11!.value,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
