import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/j_circular_icon.dart';

class JProductQuantityWithAddRemoveButton extends StatelessWidget {
  const JProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: JSizes.md,
          color: dark ? JColors.white : JColors.black,
          backgroundColor: dark ? JColors.darkerGrey : JColors.light,
        ),
        const SizedBox(width: JSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: JSizes.spaceBtwItems),
        JCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: JSizes.md,
          color: JColors.white,
          backgroundColor: JColors.primary,
        ),
      ],
    );
  }
}
