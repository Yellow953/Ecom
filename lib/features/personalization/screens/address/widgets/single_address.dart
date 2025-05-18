import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';

class JSingleAddress extends StatelessWidget {
  const JSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return JRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(JSizes.md),
      showBorder: true,
      backgroundColor: selectedAddress
          ? JColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? JColors.darkerGrey
              : JColors.grey,
      margin: const EdgeInsets.only(bottom: JSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? JColors.light
                      : JColors.dark.withOpacity(0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: JSizes.sm / 2),
              const Text(
                '(+961) 70 285 659',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: JSizes.sm / 2),
              const Text(
                '82356 Timmy Coves, South Liana, Maine, 87665, USA',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
