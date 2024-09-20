import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/category_controller.dart';
import 'models/categorygrid_item_model.dart';
import 'widgets/categorygrid_item_widget.dart'; // ignore_for_file: must_be_immutable

class CategoryScreen extends GetWidget<CategoryController> {
  const CategoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.fromLTRB(18.h, 20.h, 14.h, 4.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildCategoryGrid()],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 92.h,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img4829869ArrowNextRightIcon,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 26.h,
          bottom: 38.h,
        ),
        onTap: () {
          onTaparrow();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_all_category_gift".tr,
        margin: EdgeInsets.only(
          top: 23.h,
          bottom: 43.h,
        ),
      ),
      styleType: Style.bgGradientnamelime600opacity016namelime100opacity016,
    );
  }

  /// Section Widget
  Widget _buildCategoryGrid() {
    return Expanded(
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 153.h,
            crossAxisCount: 3,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: controller
              .categoryModelObj.value.categorygridItemList.value.length,
          itemBuilder: (context, index) {
            CategorygridItemModel model = controller
                .categoryModelObj.value.categorygridItemList.value[index];
            return CategorygridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the denominationsScreen when the action is triggered.
  onTaparrow() {
    Get.toNamed(
      AppRoutes.denominationsScreen,
    );
  }
}
