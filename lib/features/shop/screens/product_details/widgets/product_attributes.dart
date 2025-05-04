import 'package:ecom/common/widgets/chips/choice_chip.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/texts/product_price_text.dart';
import 'package:ecom/common/widgets/texts/product_title_text.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class JProductAttributes extends StatelessWidget {
  const JProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        JRoundedContainer(
          padding: const EdgeInsets.all(JSizes.md),
          backgroundColor: dark ? JColors.darkerGrey : JColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const JSectionHeading(
                    title: 'Variation',
                    showActionsButton: false,
                  ),
                  const SizedBox(width: JSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const JProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          const SizedBox(width: JSizes.spaceBtwItems),

                          /// Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: JSizes.spaceBtwItems),

                          /// Sale Price
                          const JProductPriceText(price: '20'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const JProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              JProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: JSizes.spaceBtwItems),

        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JSectionHeading(
              title: 'Color',
              showActionsButton: false,
            ),
            const SizedBox(height: JSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                JChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                JChoiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                JChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: JSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JSectionHeading(
              title: 'Size',
              showActionsButton: false,
            ),
            const SizedBox(height: JSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                JChoiceChip(
                  text: 'EU 34',
                  selected: false,
                  onSelected: (value) {},
                ),
                JChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                JChoiceChip(
                  text: 'EU 38',
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
