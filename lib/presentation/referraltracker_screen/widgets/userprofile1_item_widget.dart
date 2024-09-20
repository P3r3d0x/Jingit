import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/referraltracker_controller.dart';
import '../models/userprofile1_item_model.dart';

// ignore_for_file: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(this.userprofile1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ReferraltrackerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.h,
      decoration: AppDecoration.gradientLimeToLime.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Obx(
                    () => Text(
                      userprofile1ItemModelObj.dynamicTextProp!.value,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(width: 20.h),
                Expanded(
                  child: Container(
                    height: 108.h,
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.only(
                      top: 18.h,
                      right: 26.h,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup97,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Obx(
                          () => CustomIconButton(
                            height: 58.h,
                            width: 58.h,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillAmber,
                            child: CustomImageView(
                              imagePath: userprofile1ItemModelObj
                                  .dynamicIconProp!.value,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Obx(
            () => Text(
              userprofile1ItemModelObj.dynamictextprop1!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 32.h)
        ],
      ),
    );
  }
}
