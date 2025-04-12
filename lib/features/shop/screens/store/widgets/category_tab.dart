import 'package:ecom/common/widgets/layouts/grid_layout.dart';
import 'package:ecom/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class JCategoryTab extends StatelessWidget {
  const JCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              JBrandShowcase(
                images: [
                  JImages.productImage3,
                  JImages.productImage2,
                  JImages.productImage1,
                ],
              ),
              JBrandShowcase(
                images: [
                  JImages.productImage1,
                  JImages.productImage2,
                  JImages.productImage3,
                ],
              ),
              const SizedBox(height: JSizes.spaceBtwItems),
              JSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: JSizes.spaceBtwItems),
              JGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => JProductCardVertical(),
              ),
              const SizedBox(height: JSizes.spaceBtwSections),
            ],
          ),
        )
      ],
    );
  }
}
