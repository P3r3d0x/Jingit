import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlackF => BoxDecoration(
        color: appTheme.black900F9,
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue700,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue800 => BoxDecoration(
        color: appTheme.blue800,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray5001 => BoxDecoration(
        color: appTheme.blueGray5001,
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA200,
      );
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA700,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: appTheme.gray10003,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo800,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA700,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange600,
      );
  static BoxDecoration get fillOrange50 => BoxDecoration(
        color: appTheme.orange50,
      );
  static BoxDecoration get fillOrange5001 => BoxDecoration(
        color: appTheme.orange5001,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink700,
      );
  static BoxDecoration get fillPink70001 => BoxDecoration(
        color: appTheme.pink70001,
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA200,
      );
  static BoxDecoration get fillPinkA700 => BoxDecoration(
        color: appTheme.pinkA700,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red700,
      );
  static BoxDecoration get fillRed30021 => BoxDecoration(
        color: appTheme.red30021,
      );
  static BoxDecoration get fillRed400 => BoxDecoration(
        color: appTheme.red400,
      );
  static BoxDecoration get fillRed40001 => BoxDecoration(
        color: appTheme.red40001,
      );
  static BoxDecoration get fillRed50 => BoxDecoration(
        color: appTheme.red50,
      );
  static BoxDecoration get fillRed500 => BoxDecoration(
        color: appTheme.red500,
      );
  static BoxDecoration get fillRed5001 => BoxDecoration(
        color: appTheme.red5001,
      );
  static BoxDecoration get fillRed5002 => BoxDecoration(
        color: appTheme.red5002,
      );
  static BoxDecoration get fillRed5004 => BoxDecoration(
        color: appTheme.red5004,
      );
  static BoxDecoration get fillRed5005 => BoxDecoration(
        color: appTheme.red5005,
      );
  static BoxDecoration get fillRed5006 => BoxDecoration(
        color: appTheme.red5006,
      );
  static BoxDecoration get fillRed600 => BoxDecoration(
        color: appTheme.red600,
      );
  static BoxDecoration get fillRedA => BoxDecoration(
        color: appTheme.redA700,
      );
  static BoxDecoration get fillRedA70001 => BoxDecoration(
        color: appTheme.redA70001,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal900,
      );
  static BoxDecoration get fillTeal400 => BoxDecoration(
        color: appTheme.teal400,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.1),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow800,
      );
// Gradient decorations
  static BoxDecoration get gradientLimeToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.99, 0.82),
          end: Alignment(0, 0),
          colors: [appTheme.lime600.withOpacity(0.42), appTheme.lime100],
        ),
      );
  static BoxDecoration get gradientLimeToLime100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.99, 0.82),
          end: Alignment(0, 0),
          colors: [
            appTheme.lime600.withOpacity(0.16),
            appTheme.lime100.withOpacity(0.16)
          ],
        ),
      );
  static BoxDecoration get gradientLimeToLime1001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.99, 0.82),
          end: Alignment(0, 0),
          colors: [appTheme.lime600.withOpacity(0.74), appTheme.lime100],
        ),
      );
  static BoxDecoration get gradientRedToRedF => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.98, 0.5),
          end: Alignment(0, 0.5),
          colors: [appTheme.red10044, appTheme.red2007f],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.16),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray1003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray80014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray5003f => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray5003f1 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray5003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineLime => BoxDecoration(
        color: appTheme.lime600.withOpacity(0.17),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder194 => BorderRadius.circular(
        194.h,
      );
// Custom borders
  static BorderRadius get customBorderBL16 => BorderRadius.vertical(
        bottom: Radius.circular(16.h),
      );
  static BorderRadius get customBorderLR30 => BorderRadius.horizontal(
        right: Radius.circular(30.h),
      );
  static BorderRadius get customBorderLR40 => BorderRadius.only(
        topRight: Radius.circular(40.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
        bottomRight: Radius.circular(16.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}
