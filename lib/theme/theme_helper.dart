import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          shadowColor: appTheme.black900.withOpacity(0.08),
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimary,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 40.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 26.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: appTheme.lime600,
          fontSize: 25.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.teal800,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.green700,
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF262834),
    primaryContainer: Color(0X4792938E),
    errorContainer: Color(0XFF175417),
    onErrorContainer: Color(0XFF040201),
    onPrimary: Color(0XFFE4E4E4),
    onPrimaryContainer: Color(0XFF0D161B),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber40049 => Color(0X49E6C71A);
  Color get amber500 => Color(0XFFF1C40F);
// Black
  Color get black900 => Color(0XFF000000);
// BlackF
  Color get black900F9 => Color(0XF90E0E0F);
// Blue
  Color get blue100 => Color(0XFFBED6FF);
  Color get blue300 => Color(0XFF68A5FF);
  Color get blue400 => Color(0XFF4CA4EE);
  Color get blue50 => Color(0XFFE5EFFF);
  Color get blue500 => Color(0XFF1695FF);
  Color get blue700 => Color(0XFF0F7BD5);
  Color get blue800 => Color(0XFF0B5ED8);
  Color get blueA400 => Color(0XFF2974F1);
// BlueGray
  Color get blueGray100 => Color(0XFFD6D6D6);
  Color get blueGray400 => Color(0XFF8C8C8C);
  Color get blueGray50 => Color(0XFFF1F1F1);
  Color get blueGray5001 => Color(0XFFEDEEF2);
  Color get blueGray600 => Color(0XFF5E6F77);
  Color get blueGray60001 => Color(0XFF5E6D72);
  Color get blueGray60002 => Color(0XFF5E7077);
  Color get blueGray800 => Color(0XFF434550);
  Color get blueGray900 => Color(0XFF272935);
  Color get blueGray90001 => Color(0XFF2B2B2B);
  Color get blueGray90002 => Color(0XFF2F2F2F);
// BlueGrayf
  Color get blueGray1003f => Color(0X3FCECECE);
// Cyan
  Color get cyanA400 => Color(0XFF00E0FF);
// DeepOrange
  Color get deepOrange300 => Color(0XFFFA7864);
  Color get deepOrangeA100 => Color(0XFFFF9F7E);
  Color get deepOrangeA200 => Color(0XFFF16635);
  Color get deepOrangeA400 => Color(0XFFFF1800);
// DeepPurple
  Color get deepPurpleA200 => Color(0XFF6747E9);
  Color get deepPurpleA700 => Color(0XFF731AE2);
// Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray10001 => Color(0XFFF6F7F8);
  Color get gray10002 => Color(0XFFF5F5F5);
  Color get gray10003 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE3E4E8);
  Color get gray400 => Color(0XFFBFBFBF);
  Color get gray40001 => Color(0XFFCACACA);
  Color get gray40002 => Color(0XFFC9C9C9);
  Color get gray40003 => Color(0XFFB9B9B9);
  Color get gray50 => Color(0XFFFFF1FB);
  Color get gray5001 => Color(0XFFF2F6FF);
  Color get gray700 => Color(0XFF68696C);
  Color get gray70001 => Color(0XFF616161);
  Color get gray800 => Color(0XFF494949);
  Color get gray80014 => Color(0X14424242);
  Color get gray900 => Color(0XFF231F20);
// Grayf
  Color get gray4003f => Color(0X3FB7B7B7);
  Color get gray5003f => Color(0X3FA1A1A1);
  Color get gray5003f01 => Color(0X3F9F9F9F);
// Green
  Color get green50 => Color(0XFFE8FFE2);
  Color get green5011 => Color(0X11EDF2DC);
  Color get green700 => Color(0XFF34991A);
  Color get green800 => Color(0XFF1C841C);
  Color get green80001 => Color(0XFF1FA901);
  Color get greenA400 => Color(0XFF09FF96);
  Color get greenA700 => Color(0XFF03D260);
// Greenf
  Color get green6003f => Color(0X3F37A537);
// Indigo
  Color get indigo800 => Color(0XFF1429A0);
  Color get indigoA100 => Color(0XFF9DABFF);
  Color get indigoA700 => Color(0XFF2725EA);
  Color get indigoA70001 => Color(0XFF3C42DC);
// LightBlue
  Color get lightBlue100 => Color(0XFFADECFF);
  Color get lightBlue600 => Color(0XFF14A4DD);
  Color get lightBlueA700 => Color(0XFF0772F4);
// Lime
  Color get lime100 => Color(0XFFF3FFD0);
  Color get lime200 => Color(0XFFE8FFA2);
  Color get lime600 => Color(0XFFAEDB1E);
  Color get lime700 => Color(0XFF94C008);
  Color get limeA100 => Color(0XFFE3FF8B);
  Color get limeA700 => Color(0XFFADDC1C);
  Color get limeA70001 => Color(0XFFAEDC1A);
// Orange
  Color get orange200 => Color(0XFFFFB76E);
  Color get orange300 => Color(0XFFFFB65A);
  Color get orange50 => Color(0XFFFFF7E2);
  Color get orange5001 => Color(0XFFFFF0DA);
  Color get orange600 => Color(0XFFFF8204);
  Color get orange60001 => Color(0XFFE88E07);
// Pink
  Color get pink300 => Color(0XFFFF59A5);
  Color get pink400 => Color(0XFFE74F88);
  Color get pink40042 => Color(0X42F25371);
  Color get pink700 => Color(0XFFC4084F);
  Color get pink70001 => Color(0XFFBE3C54);
  Color get pinkA200 => Color(0XFFF51CB3);
  Color get pinkA700 => Color(0XFFD70365);
// Purple
  Color get purpleA100 => Color(0XFFFF88DA);
// Red
  Color get red10044 => Color(0X44FFD4D0);
  Color get red200 => Color(0XFFFFA0A7);
  Color get red300 => Color(0XFFF97379);
  Color get red30001 => Color(0XFFFF7171);
  Color get red30021 => Color(0X21F76968);
  Color get red400 => Color(0XFFEB5057);
  Color get red40001 => Color(0XFFE3533C);
  Color get red50 => Color(0XFFFFECF3);
  Color get red500 => Color(0XFFFF4242);
  Color get red5001 => Color(0XFFFFECEE);
  Color get red5002 => Color(0XFFFFE7EF);
  Color get red5003 => Color(0XFFFFF2EE);
  Color get red5004 => Color(0XFFFFEEEF);
  Color get red5005 => Color(0XFFFFE9EA);
  Color get red5006 => Color(0XFFFFE9F8);
  Color get red600 => Color(0XFFE23744);
  Color get red60001 => Color(0XFFE13742);
  Color get red700 => Color(0XFFE21B32);
  Color get red900 => Color(0XFF8D1919);
  Color get redA200 => Color(0XFFFF4D65);
  Color get redA20001 => Color(0XFFFA5442);
  Color get redA400 => Color(0XFFFF1F1F);
  Color get redA700 => Color(0XFFEA0009);
  Color get redA70001 => Color(0XFFC7040B);
// Redf
  Color get red2007f => Color(0X7FFA9C92);
// Teal
  Color get teal100 => Color(0XFF95ECCD);
  Color get teal300 => Color(0XFF42C594);
  Color get teal400 => Color(0XFF25AA77);
  Color get teal50 => Color(0XFFE1F8F0);
  Color get teal800 => Color(0XFF10824A);
  Color get teal900 => Color(0XFF00623B);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
// Yellow
  Color get yellow800 => Color(0XFFF8981D);
}
