import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/splashscreen_controller.dart'; // ignore_for_file: must_be_immutable

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(22.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img021RemovebgPreview,
                height: 102.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10.h),
              ),
              SizedBox(height: 22.h),
              Container(
                height: 68.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 44.h,
                  right: 34.h,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_gift".tr,
                              style:
                                  CustomTextStyles.headlineMediumPrimaryRegular,
                            ),
                            TextSpan(
                              text: "lbl_smarter".tr,
                              style: CustomTextStyles.headlineMediumLimeA700,
                            ),
                            TextSpan(
                              text: "lbl_save".tr,
                              style:
                                  CustomTextStyles.headlineMediumPrimaryRegular,
                            ),
                            TextSpan(
                              text: "lbl_more".tr,
                              style: CustomTextStyles.headlineMediumLime600,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 34.h,
                      width: 88.h,
                      margin: EdgeInsets.only(left: 54.h),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }
}
