import 'package:ecom/common/widgets/icons/j_circular_icon.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class JBottomAddToCart extends StatelessWidget {
  const JBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: JSizes.defaultSpace, vertical: JSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? JColors.darkerGrey : JColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(JSizes.cardRadiusLg),
          topRight: Radius.circular(JSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const JCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: JColors.darkGrey,
                width: 40,
                height: 40,
                color: JColors.white,
              ),
              const SizedBox(width: JSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: JSizes.spaceBtwItems),
              const JCircularIcon(
                icon: Iconsax.add,
                backgroundColor: JColors.black,
                width: 40,
                height: 40,
                color: JColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(JSizes.md),
              backgroundColor: JColors.black,
              side: const BorderSide(color: JColors.black),
            ),
            child: const Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
