import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90007,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlack90005 => BoxDecoration(
        color: appTheme.black90005,
      );
  static BoxDecoration get fillBlack90007 => BoxDecoration(
        color: appTheme.black90007.withOpacity(0.67),
      );
  static BoxDecoration get fillBlack900071 => BoxDecoration(
        color: appTheme.black90007.withOpacity(0.3),
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: appTheme.gray9007f,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.primaryContainer.withOpacity(0.5),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, -0.48),
          colors: [
            appTheme.black90007.withOpacity(0.78),
            appTheme.black90007.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.31),
          end: Alignment(0.5, 0.84),
          colors: [
            appTheme.gray800,
            appTheme.gray90002,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.black90002,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90007.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray5001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray5002 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray5002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: appTheme.redA70008,
        border: Border.all(
          color: appTheme.redA70009,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border.all(
          color: appTheme.whiteA70001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder68 => BorderRadius.circular(
        68.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder35 => BorderRadius.circular(
        35.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
