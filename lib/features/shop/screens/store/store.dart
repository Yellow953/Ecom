import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/appbar/tabbar.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecom/common/widgets/layouts/grid_layout.dart';
import 'package:ecom/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = JHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: JAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                            return JBrandCard(showBorder: false);
                          }),
                    ],
                  ),
                ),
                bottom: const JTabBar(tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Cosmetics')),
                ]),
              ),
            ];
          },
          body: const TabBarView(children: [
            JCategoryTab(),
            JCategoryTab(),
            JCategoryTab(),
            JCategoryTab(),
            JCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
