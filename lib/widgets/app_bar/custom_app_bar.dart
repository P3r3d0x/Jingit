import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum Style {
  bgGradientnamelime600opacity022namelime100opacity022,
  bgGradientnamelime600opacity016namelime100opacity016
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(key: key);

  final double? height;
  final Style? styleType;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        child: _getStyle(),
      ),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    SizeUtils.width,
    height ?? 56.h,
  );

  Widget _getStyle() {
    switch (styleType) {
      case Style.bgGradientnamelime600opacity022namelime100opacity022:
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.99, 0.82),
                end: Alignment(0, 0),
                colors: [
                  appTheme.lime600.withOpacity(0.22),
                  appTheme.lime100.withOpacity(0.22),
                ],
              ),
            ),
          ),
        );
      case Style.bgGradientnamelime600opacity016namelime100opacity016:
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.99, 0.82),
                end: Alignment(0, 0),
                colors: [
                  appTheme.lime600.withOpacity(0.16),
                  appTheme.lime100.withOpacity(0.16),
                ],
              ),
            ),
          ),
        );
      default:
        return Container(); // Return an empty container if no style type
    }
  }
}

