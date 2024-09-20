import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/home_controller.dart';
import 'models/columnview_item_model.dart';
import 'models/fashioncolumn_item_model.dart';
import 'models/listrectangle_item_model.dart';
import 'models/listtextprop_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'widgets/columnview_item_widget.dart';
import 'widgets/fashioncolumn_item_widget.dart';
import 'widgets/listrectangle_item_widget.dart';
import 'widgets/listtextprop_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';
import 'widgets/viewhierarchylist_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageSection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 22.h),
                    child: Column(
                      children: [
                        _buildSettingsSection(),
                        SizedBox(height: 30.h),
                        _buildListRectangle(),
                        SizedBox(height: 30.h),
                        _buildLeadingBrands(),
                        SizedBox(height: 30.h),
                        _buildTransferTravel(),
                        SizedBox(height: 30.h),
                        _buildViewHierarchyList(),
                        SizedBox(height: 30.h),
                        _buildFoodOnline(),
                        SizedBox(height: 4.h)
                      ],
                    ),
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
  Widget _buildImageSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup706,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 70.h,
            title: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 70.h,
                    width: 70.h,
                    child: Stack(
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20.h,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0.03),
                              end: Alignment(0.5, 0.97),
                              colors: [appTheme.greenA400, appTheme.cyanA400],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('Siddharth Kataria',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(
                  top: 18.h,
                  right: 19.h,
                ),
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black900.withOpacity(0.06),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    )
                  ],
                ),
                // width: double.maxFinite,
                child: Row(
                  children: [
                    AppbarImage(
                      imagePath: ImageConstant.imgUntitled11,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 3.h,
                        bottom: 5.h,
                      ),
                    ),
                    AppbarSubtitleOne(
                      text: "lbl_10".tr,
                      margin: EdgeInsets.fromLTRB(5.h, 3.h, 17.h, 6.h),
                    )
                  ],
                ),
              ),
              AppbarTrailingButton(
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 18.h,
                  right: 44.h,
                ),
              )
            ],
          ),
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1000004310,
            height: 50.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 18.h,
              right: 22.h,
            ),
          ),
          SizedBox(height: 14.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlack900,
                  height: 20.h,
                  width: 96.h,
                  alignment: Alignment.bottomCenter,
                ),
                CustomElevatedButton(
                  height: 24.h,
                  width: 86.h,
                  onPressed: onTapUnsplashthree,
                  text: "lbl_view_all".tr,
                  margin: EdgeInsets.only(right: 4.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                )
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 152.h,
            width: 396.h,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(left: 4.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 14.h,
                  );
                },
                itemCount: controller
                    .homeModelObj.value.fashioncolumnItemList.value.length,
                itemBuilder: (context, index) {
                  FashioncolumnItemModel model = controller
                      .homeModelObj.value.fashioncolumnItemList.value[index];
                  return FashioncolumnItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListRectangle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 160.h,
        width: 692.h,
        child: Obx(
          () => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: controller
                .homeModelObj.value.listrectangleItemList.value.length,
            itemBuilder: (context, index) {
              ListrectangleItemModel model = controller
                  .homeModelObj.value.listrectangleItemList.value[index];
              return ListrectangleItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeadingBrands() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLeadingBrands,
            height: 20.h,
            width: 162.h,
            margin: EdgeInsets.only(left: 6.h),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 115.h,
                  crossAxisCount: 3,
                  mainAxisSpacing: 14.h,
                  crossAxisSpacing: 14.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller
                    .homeModelObj.value.columnviewItemList.value.length,
                itemBuilder: (context, index) {
                  ColumnviewItemModel model = controller
                      .homeModelObj.value.columnviewItemList.value[index];
                  return ColumnviewItemWidget(
                    model,
                    onTapColumnview: () {
                      onTapColumnview();
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 24.h),
          CustomElevatedButton(
            height: 50.h,
            text: "msg_view_all_350_brands".tr,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 8.h,
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL24,
            buttonTextStyle: CustomTextStyles.titleLargeBold,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransferTravel() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 20.h,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTransferYourTravel,
            height: 24.h,
            width: 242.h,
            margin: EdgeInsets.only(left: 2.h),
          ),
          SizedBox(height: 18.h),
          CustomImageView(
            imagePath: ImageConstant.imgEnhanceEveryJourney,
            height: 14.h,
            width: 324.h,
            margin: EdgeInsets.only(left: 6.h),
          ),
          SizedBox(height: 18.h),
          SizedBox(
            height: 156.h,
            width: 396.h,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(left: 2.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 14.h,
                  );
                },
                itemCount: controller
                    .homeModelObj.value.listtextpropItemList.value.length,
                itemBuilder: (context, index) {
                  ListtextpropItemModel model = controller
                      .homeModelObj.value.listtextpropItemList.value[index];
                  return ListtextpropItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 16.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList() {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 34.h,
          );
        },
        itemCount: controller
            .homeModelObj.value.viewhierarchylistItemList.value.length,
        itemBuilder: (context, index) {
          ViewhierarchylistItemModel model = controller
              .homeModelObj.value.viewhierarchylistItemList.value[index];
          return ViewhierarchylistItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFoodOnline() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 18.h,
        right: 14.h,
      ),
      child: Column(
        children: [
          Obx(
            () => ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20.h,
                );
              },
              itemCount: controller
                  .homeModelObj.value.userprofileItemList.value.length,
              itemBuilder: (context, index) {
                UserprofileItemModel model = controller
                    .homeModelObj.value.userprofileItemList.value[index];
                return UserprofileItemWidget(
                  model,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapUnsplashthree() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the denominationsScreen when the action is triggered.
  onTapColumnview() {
    Get.toNamed(
      AppRoutes.denominationsScreen,
    );
  }
}
