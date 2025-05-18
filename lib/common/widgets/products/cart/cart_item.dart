import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/j_rounded_image.dart';
import '../../texts/j_brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class JCartItem extends StatelessWidget {
  const JCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        JRoundedImage(
          imageUrl: JImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(JSizes.sm),
          backgroundColor: dark ? JColors.darkerGrey : JColors.light,
        ),
        const SizedBox(width: JSizes.spaceBtwItems),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JBrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(
              child: const JProductTitleText(
                title: 'Black Sports shoes',
                maxLines: 1,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'XL ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
