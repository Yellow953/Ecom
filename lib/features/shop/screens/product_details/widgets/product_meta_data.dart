import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/images/j_circular_image.dart';
import 'package:ecom/common/widgets/texts/j_brand_title_text_with_verified_icon.dart';
import 'package:ecom/common/widgets/texts/product_price_text.dart';
import 'package:ecom/common/widgets/texts/product_title_text.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/enums.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class JProductMetaData extends StatelessWidget {
  const JProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale
            JRoundedContainer(
              radius: JSizes.sm,
              backgroundColor: JColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: JSizes.sm, vertical: JSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: JColors.black),
              ),
            ),
            const SizedBox(width: JSizes.spaceBtwItems),

            /// Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: JSizes.spaceBtwItems),
            const JProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(width: JSizes.spaceBtwItems / 1.5),

        /// Title
        JProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(width: JSizes.spaceBtwItems / 1.5),

        /// Stock status
        Row(
          children: [
            const JProductTitleText(title: 'Status'),
            const SizedBox(width: JSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: JSizes.spaceBtwItems / 1.5),

        /// Brand
        Row(
          children: [
            JCircularImage(
              image: JImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? JColors.white : JColors.black,
            ),
            const JBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
