import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/faqs_controller.dart';
import 'models/faqlist_item_model.dart';
import 'widgets/faqlist_item_widget.dart'; // ignore_for_file: must_be_immutable

class FaqsScreen extends GetWidget<FaqsController> {
  const FaqsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10002,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 18.h,
              ),
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  _buildGreetingSection(),
                  SizedBox(height: 10.h),
                  _buildFaqList(),
                  SizedBox(height: 104.h),
                  _buildFeedbackSection()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img4829869ArrowNextRightIcon,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 14.h,
          bottom: 14.h,
        ),
        onTap: () {
          onTaparrow();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_frequently_asked3".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGreetingSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.only(
        left: 30.h,
        top: 18.h,
        bottom: 18.h,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_hi_priya".tr,
            style: CustomTextStyles.headlineMediumPoppinsBlack900,
          ),
          Text(
            "msg_how_we_can_help".tr,
            style: CustomTextStyles.titleLargePrimaryRegular,
          ),
          SizedBox(height: 6.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFaqList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: controller.faqsModelObj.value.faqlistItemList.value.length,
          itemBuilder: (context, index) {
            FaqlistItemModel model =
                controller.faqsModelObj.value.faqlistItemList.value[index];
            return FaqlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 22.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_did_this_resolve".tr,
            style: CustomTextStyles.titleLargePrimary_1,
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: 154.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 56.h,
                  width: 56.h,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1814076Approve,
                  ),
                ),
                CustomIconButton(
                  height: 56.h,
                  width: 56.h,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1814076Approve,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTaparrow() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
