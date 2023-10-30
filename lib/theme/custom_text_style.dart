import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumInikaRedA70002 =>
      theme.textTheme.displayMedium!.inika.copyWith(
        color: appTheme.redA70002,
        fontWeight: FontWeight.w400,
      );
  static get displayMediumRedA70002 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.redA70002,
      );
  static get displaySmallBlack90007 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black90007,
      );
  static get displaySmallWhiteA70001 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get displaySmallWhiteA70001_1 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Headline text style
  static get headlineMediumRed300 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.red300,
      );
  static get headlineSmall24 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeGray10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelMediumRedA70006 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.redA70006,
      );
  static get labelMediumWhiteA70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeBlack90007 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90007,
      );
  static get titleLargeGray200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray200,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium19 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 19.fSize,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inika {
    return copyWith(
      fontFamily: 'Inika',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
