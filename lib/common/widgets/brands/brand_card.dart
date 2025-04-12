import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/j_circular_image.dart';
import '../texts/j_brand_title_text_with_verified_icon.dart';

class JBrandCard extends StatelessWidget {
  const JBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: JRoundedContainer(
        padding: const EdgeInsets.all(JSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: JCircularImage(
                dark: dark,
                image: JImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? JColors.white : JColors.black,
              ),
            ),
            const SizedBox(width: JSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const JBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
