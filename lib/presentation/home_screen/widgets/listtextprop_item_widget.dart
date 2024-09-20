import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/home_controller.dart';
import '../models/listtextprop_item_model.dart';

// ignore_for_file: must_be_immutable
class ListtextpropItemWidget extends StatelessWidget {
  ListtextpropItemWidget(this.listtextpropItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListtextpropItemModel listtextpropItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.h,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: AppDecoration.fillRed40001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: listtextpropItemModelObj.imageProp!.value,
                      height: 10.h,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 10.h),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 18.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_2".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: "lbl_off".tr.toUpperCase(),
                            style: theme.textTheme.titleMedium,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Container(
                          height: 16.h,
                          width: 8.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.h),
                              topRight: Radius.circular(2.h),
                              bottomLeft: Radius.circular(2.h),
                              bottomRight: Radius.circular(4.h),
                            ),
                          ),
                        ),
                        SizedBox(width: 26.h),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                listtextpropItemModelObj.imageProp1!.value,
                            height: 50.h,
                            width: 50.h,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CustomIconButton(
                    height: 20.h,
                    width: 94.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillDeepOrange,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack90020x94,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 2.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 16.h,
              width: 8.h,
              margin: EdgeInsets.only(bottom: 48.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.h),
                  topRight: Radius.circular(2.h),
                  bottomLeft: Radius.circular(2.h),
                  bottomRight: Radius.circular(4.h),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
