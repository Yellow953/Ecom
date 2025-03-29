import 'package:ecom/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecom/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';

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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
