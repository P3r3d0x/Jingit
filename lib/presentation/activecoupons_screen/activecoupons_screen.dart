import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'activecouponsac_tab_page.dart';
import 'controller/activecoupons_controller.dart'; // ignore_for_file: must_be_immutable

class ActivecouponsScreen extends GetWidget<ActivecouponsController> {
  const ActivecouponsScreen({Key? key})
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 14.h),
              _buildManageSection(),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      ActivecouponsacTabPage(),
                      ActivecouponsacTabPage()
                    ],
                  ),
                ),
              )
            ],
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
        text: "lbl_my_brand_cards".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildManageSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 26.h),
            child: Text(
              "msg_manage_and_track".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumPrimaryMedium.copyWith(
                height: 1.56,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Container(
            margin: EdgeInsets.only(right: 8.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                24.h,
              ),
            ),
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                24.h,
              ),
              child: TabBar(
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.black900,
                labelStyle: TextStyle(
                  fontSize: 20.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: appTheme.whiteA700,
                unselectedLabelStyle: TextStyle(
                  fontSize: 20.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: appTheme.lime600,
                  borderRadius: BorderRadius.circular(
                    24.h,
                  ),
                ),
                dividerHeight: 0.0,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.h,
                      ),
                      child: Text(
                        "lbl_active".tr,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.h,
                      ),
                      child: Text(
                        "lbl_expired".tr,
                      ),
                    ),
                  )
                ],
              ),
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
