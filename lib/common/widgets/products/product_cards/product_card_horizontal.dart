import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/images/j_rounded_image.dart';
import 'package:ecom/common/widgets/texts/j_brand_title_text_with_verified_icon.dart';
import 'package:ecom/common/widgets/texts/product_price_text.dart';
import 'package:ecom/common/widgets/texts/product_title_text.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/j_circular_icon.dart';

class JProductCardHorizontal extends StatelessWidget {
  const JProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(JSizes.productImageRadius),
        color: dark ? JColors.darkerGrey : JColors.softGrey,
      ),
      child: Row(
        children: [
          JRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(JSizes.sm),
            backgroundColor: dark ? JColors.dark : JColors.light,
            child: Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: JRoundedImage(
                    imageUrl: JImages.productImage1,
                    applyImageRadius: true,
                  ),
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
                  child: JCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: JSizes.sm, left: JSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      JProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: JSizes.spaceBtwItems / 2),
                      JBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: JProductPriceText(price: '256.0')),
                      Container(
                        decoration: const BoxDecoration(
                          color: JColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(JSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(JSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
