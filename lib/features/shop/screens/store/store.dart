import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecom/common/widgets/layouts/grid_layout.dart';
import 'package:ecom/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/enums.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/images/j_circular_image.dart';
import '../../../../common/widgets/texts/j_brand_title_text_with_verified_icon.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: JAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          JCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? JColors.black : JColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(JSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: JSizes.spaceBtwItems),
                    JSearchContainer(
                      text: 'Search in Store...',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: JSizes.spaceBtwSections),
                    JSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: JSizes.spaceBtwItems / 1.5),
                    JGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: JRoundedContainer(
                              padding: const EdgeInsets.all(JSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: JCircularImage(
                                      dark: dark,
                                      image: JImages.clothIcon,
                                      isNetworkImage: false,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          dark ? JColors.white : JColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                      width: JSizes.spaceBtwItems / 2),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const JBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
