import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/otp_controller.dart'; // ignore_for_file: must_be_immutable

class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img0113,
                height: 48.h,
                width: 172.h,
                margin: EdgeInsets.only(left: 6.h),
              ),
              SizedBox(height: 58.h),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_verify_phone_number".tr,
                  style: CustomTextStyles.headlineLargePrimary,
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_otp_has_been_sent".tr,
                  style: CustomTextStyles.bodyLargeLight_1,
                ),
              ),
              SizedBox(height: 44.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_r".tr.toUpperCase(),
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_equest_another".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_otp".tr.toUpperCase(),
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_over".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "lbl_sms".tr.toUpperCase(),
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                      TextSpan(
                        text: "lbl_in_00_30_sec".tr,
                        style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 72.h),
              CustomElevatedButton(
                text: "lbl_verify".tr.toUpperCase(),
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 8.h,
                ),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img4829869arrownextrighticon61,
                    height: 28.h,
                    width: 28.h,
                  ),
                ),
                onPressed: () {
                  onTapVerify();
                },
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 46.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLayer2,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 21.h,
          bottom: 22.h,
        ),
      ),
    );
  }

  /// Navigates to the usersigninScreen when the action is triggered.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.usersigninScreen,
    );
  }
}
