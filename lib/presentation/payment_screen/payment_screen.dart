import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/payment_controller.dart';
import 'models/rowpaywithanyte_item_model.dart';
import 'widgets/rowpaywithanyte_item_widget.dart'; // ignore_for_file: must_be_immutable

class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray5001,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildPaymentSummary(),
              SizedBox(height: 32.h),
              _buildPaymentMethods(),
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
      height: 42.h,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgLayer2,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 15.h,
          bottom: 14.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentSummary() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_complete_payment".tr,
                  style: CustomTextStyles.headlineMediumPrimary27,
                ),
                SizedBox(height: 4.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_item_brand_card2".tr,
                        style: CustomTextStyles.bodyLargeLight,
                      ),
                      TextSpan(
                        text: "lbl_5002".tr,
                        style: CustomTextStyles.titleMediumPrimaryBold_1,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          SizedBox(
            width: 88.h,
            child: Column(
              children: [
                Container(
                  height: 8.h,
                  width: 16.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray5001,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        height: 58.h,
                        width: double.maxFinite,
                        decoration: AppDecoration.fillRed.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage8,
                              height: 14.h,
                              width: 60.h,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 8.h,
                        width: 16.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray5001,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentMethods() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 20.h,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_upi".tr,
                                  style: CustomTextStyles
                                      .titleSmallBluegray400Medium,
                                ),
                                TextSpan(
                                  text: "lbl_preferred".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .titleSmallBluegray400Medium,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_y".tr.toUpperCase(),
                                        style:
                                            CustomTextStyles.titleLargePrimary,
                                      ),
                                      TextSpan(
                                        text: "lbl_ou_ll_pay".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary,
                                      ),
                                      TextSpan(
                                        text: "lbl4".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary,
                                      ),
                                      TextSpan(
                                        text: "lbl_480".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary,
                                      )
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text(
                                      "lbl_450".tr,
                                      style: CustomTextStyles
                                          .bodySmallInterBluegray400
                                          .copyWith(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "lbl_saving_20".tr,
                    style: theme.textTheme.labelLarge,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.gray200,
                indent: 8.h,
                endIndent: 6.h,
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Obx(
                  () => ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                    itemCount: controller.paymentModelObj.value
                        .rowpaywithanyteItemList.value.length,
                    itemBuilder: (context, index) {
                      RowpaywithanyteItemModel model = controller
                          .paymentModelObj
                          .value
                          .rowpaywithanyteItemList
                          .value[index];
                      return RowpaywithanyteItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h)
          ],
        ),
      ),
    );
  }
}
