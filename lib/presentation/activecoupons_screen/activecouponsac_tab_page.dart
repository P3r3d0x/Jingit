import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/activecoupons_controller.dart';
import 'models/activecouponsac_tab_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'widgets/userprofilelist1_item_widget.dart';

// ignore_for_file: must_be_immutable
class ActivecouponsacTabPage extends StatelessWidget {
  ActivecouponsacTabPage({Key? key})
      : super(
          key: key,
        );

  ActivecouponsController controller = Get.put(ActivecouponsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [SizedBox(height: 26.h), _buildUserProfileList()],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 14.h,
              );
            },
            itemCount: controller.activecouponsacTabModelObj.value
                .userprofilelist1ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofilelist1ItemModel model = controller
                  .activecouponsacTabModelObj
                  .value
                  .userprofilelist1ItemList
                  .value[index];
              return Userprofilelist1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
