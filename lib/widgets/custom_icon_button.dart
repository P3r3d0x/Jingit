import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(26.h),
      );
  static BoxDecoration get fillPrimaryTL30 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(30.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red30001,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillRedTL10 => BoxDecoration(
        color: appTheme.red300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillWhiteATL24 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPurpleA => BoxDecoration(
        color: appTheme.purpleA100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillBlueTL10 => BoxDecoration(
        color: appTheme.blue300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillOrangeTL10 => BoxDecoration(
        color: appTheme.orange200,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillRedTL101 => BoxDecoration(
        color: appTheme.red200,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPinkTL10 => BoxDecoration(
        color: appTheme.pink300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber40049.withOpacity(0.37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            28.h,
          ),
          bottomLeft: Radius.circular(
            28.h,
          ),
          bottomRight: Radius.circular(
            28.h,
          ),
        ),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue600,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green80001,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get gradientLimeToLimeA => BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(0.99, 0),
          end: Alignment(-0.18, 0),
          colors: [appTheme.lime600.withOpacity(0.74), appTheme.limeA100],
        ),
      );
  static BoxDecoration get fillAmberTL26 => BoxDecoration(
        color: appTheme.amber40049,
        borderRadius: BorderRadius.circular(26.h),
      );
  static BoxDecoration get fillIndigoATL18 => BoxDecoration(
        color: appTheme.indigoA70001,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGreenTL18 => BoxDecoration(
        color: appTheme.green800,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillRedTL18 => BoxDecoration(
        color: appTheme.red900,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(22.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5003f01,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(28.h),
                border: Border.all(
                  color: appTheme.blueGray90002,
                  width: 1.h,
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
