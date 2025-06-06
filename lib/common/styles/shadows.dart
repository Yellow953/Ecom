import 'package:ecom/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class JShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: JColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: JColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
