import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAvenirNextBlack900 =>
      theme.textTheme.bodyLarge!.avenirNext.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumAvenirOnPrimary =>
      theme.textTheme.bodyMedium!.avenir.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumBluegray10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumBluegray10002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallAvenirNextBlack900 =>
      theme.textTheme.bodySmall!.avenirNext.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPurple70002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.purple70002,
        fontSize: 12.fSize,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  // Label text style
  static get labelLargeAvenirNextGray500 =>
      theme.textTheme.labelLarge!.avenirNext.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeAvenirOnPrimary =>
      theme.textTheme.labelLarge!.avenir.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeAvenirPurple700 =>
      theme.textTheme.labelLarge!.avenir.copyWith(
        color: appTheme.purple700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w900,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeGray10001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray10001,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMulishGray900 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
      );
  static get labelLargePurple70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePurple70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple70002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargePurple7000212 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.purple70002,
        fontSize: 12.fSize,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSecondaryContainerMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get labelMediumGray10001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray10001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get labelMediumLightgreen900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPurple70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.purple70002,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray10001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600.withOpacity(0.8),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPurple70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.purple70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPurple7000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.purple70001,
        fontSize: 18.fSize,
      );
  static get titleMediumPurple70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.purple70002,
      );
  static get titleSmallMulishGray900 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsLightblueA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsOnPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get titleSmallPoppinsSecondaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get ubuntu {
    return copyWith(
      fontFamily: 'Ubuntu',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get avenirNext {
    return copyWith(
      fontFamily: 'AvenirNext',
    );
  }

  TextStyle get avenir {
    return copyWith(
      fontFamily: 'Avenir',
    );
  }
}
