import 'package:ecom/features/shop/screens/all_products/all_products.dart';
import 'package:ecom/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecom/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecom/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JPrimaryHeaderContainer(
              child: Column(
                children: [
                  const JHomeAppBar(),
                  const SizedBox(height: JSizes.spaceBtwSections),
                  JSearchContainer(
                    text: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: JSizes.defaultSpace),
                    child: Column(
                      children: [
                        JSectionHeading(
                          title: 'Popular Categories',
                          showActionsButton: false,
                          textColor: JColors.white,
                        ),
                        const SizedBox(height: JSizes.spaceBtwItems),
                        JHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: JSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(JSizes.defaultSpace),
              child: Column(
                children: [
                  const JPromoSlider(
                    banners: [
                      JImages.promoBanner1,
                      JImages.promoBanner2,
                      JImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections),
                  JSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => AllProducts())),
                  const SizedBox(height: JSizes.spaceBtwSections),
                  JGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const JProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
