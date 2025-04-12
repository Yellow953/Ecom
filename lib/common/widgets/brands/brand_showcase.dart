import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class JBrandShowcase extends StatelessWidget {
  const JBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return JRoundedContainer(
      showBorder: true,
      borderColor: JColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(JSizes.md),
      margin: const EdgeInsets.only(bottom: JSizes.spaceBtwItems),
      child: Column(
        children: [
          JBrandCard(showBorder: false),
          const SizedBox(height: JSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final dark = JHelperFunctions.isDarkMode(context);

  return Expanded(
    child: JRoundedContainer(
      height: 100,
      backgroundColor: dark ? JColors.darkGrey : JColors.light,
      margin: const EdgeInsets.only(right: JSizes.sm),
      padding: const EdgeInsets.all(JSizes.md),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
