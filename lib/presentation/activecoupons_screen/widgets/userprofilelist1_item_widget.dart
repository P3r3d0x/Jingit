import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/activecoupons_controller.dart';
import '../models/userprofilelist1_item_model.dart';

// ignore_for_file: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(this.userprofilelist1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<ActivecouponsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.h,
      margin: EdgeInsets.only(right: 8.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 4.h,
              right: 22.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.h,
            ),
            decoration: AppDecoration.fillBlueA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.h),
                Obx(
                  () => CustomImageView(
                    imagePath:
                        userprofilelist1ItemModelObj.brandCardImage!.value,
                    height: 28.h,
                    width: 112.h,
                    margin: EdgeInsets.only(left: 4.h),
                  ),
                ),
                SizedBox(height: 28.h),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      userprofilelist1ItemModelObj.brandCardText!.value,
                      style: CustomTextStyles.bodyLargeWhiteA700Light18,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(
                          userprofilelist1ItemModelObj.brandName!.value,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                      Obx(
                        () => Text(
                          userprofilelist1ItemModelObj.brandPrice!.value,
                          style: theme.textTheme.headlineMedium,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 158.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 158.h,
                    width: 368.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue100,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: CustomIconButton(
                      height: 38.h,
                      width: 38.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillIndigoATL18,
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        onTap: onTapBoughtCouponDetails,
                        imagePath: ImageConstant.imgArrowRightWhiteA700,
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
  onTapBoughtCouponDetails() {
    Get.toNamed(
      AppRoutes.boughtcoupondetailsScreen,
    );
  }
}
