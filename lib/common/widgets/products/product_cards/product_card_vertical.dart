import 'package:ecom/common/widgets/images/j_rounded_image.dart';
import 'package:ecom/common/widgets/texts/j_brand_title_text_with_verified_icon.dart';
import 'package:ecom/common/widgets/texts/product_title_text.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/j_circular_icon.dart';
import '../../texts/product_price_text.dart';

class JProductCardVertical extends StatelessWidget {
  const JProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [JShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(JSizes.productImageRadius),
          color: dark ? JColors.darkerGrey : JColors.white,
        ),
        child: Column(
          children: [
            JRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(JSizes.sm),
              backgroundColor: dark ? JColors.dark : JColors.light,
              child: Stack(
                children: [
                  const JRoundedImage(
                    imageUrl: JImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: JRoundedContainer(
                      radius: JSizes.sm,
                      backgroundColor: JColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: JSizes.sm, vertical: JSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: JColors.black)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child:
                        JCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  )
                ],
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: JSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const JProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems / 2),
                  JBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: JSizes.sm),
                  child: JProductPriceText(
                    price: '35.0',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: JColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(JSizes.cardRadiusMd),
                      bottomRight: Radius.circular(JSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: JSizes.iconLg * 1.2,
                    height: JSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: JColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
