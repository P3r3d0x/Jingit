import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart';
import '../controller/category_controller.dart';
import '../models/categorygrid_item_model.dart';

// ignore_for_file: must_be_immutable
class CategorygridItemWidget extends StatelessWidget {
  CategorygridItemWidget(this.categorygridItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CategorygridItemModel categorygridItemModelObj;

  var controller = Get.find<CategoryController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 152.h,
        decoration: AppDecoration.outlineGray5003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => Text(
                        categorygridItemModelObj.fashionText!.value,
                        style: CustomTextStyles.titleMediumBlack900_2,
                      ),
                    ),
                    Obx(
                      () => Text(
                        categorygridItemModelObj.discountText!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 152.h,
              padding: EdgeInsets.only(top: 4.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup1003,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: categorygridItemModelObj.image1!.value,
                      height: 84.h,
                      width: 102.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      margin: EdgeInsets.only(top: 2.h),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: categorygridItemModelObj.image2!.value,
                      height: 86.h,
                      width: 84.h,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
