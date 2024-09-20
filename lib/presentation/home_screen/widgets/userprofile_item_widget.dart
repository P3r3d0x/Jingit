import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart';

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 118.h,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          decoration: AppDecoration.fillRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 6.h,
                width: 24.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Obx(
                () => CustomImageView(
                  imagePath: userprofileItemModelObj.dynamicproperty!.value,
                  height: 24.h,
                  width: double.maxFinite,
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 6.h,
                width: 24.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofileItemModelObj.dynamicproperty1!.value,
                            height: 18.h,
                            width: 72.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofileItemModelObj.dynamicproperty2!.value,
                            height: 12.h,
                            width: 66.h,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Obx(
                    () => Text(
                      userprofileItemModelObj.dynamicproperty3!.value,
                      style: CustomTextStyles.titleMediumRed60001,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
