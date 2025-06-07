import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/brands/brand_card.dart';
import 'package:ecom/common/widgets/layouts/grid_layout.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/features/shop/screens/brand/brand_products.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              const JSectionHeading(title: 'Brands'),
              const SizedBox(height: JSizes.spaceBtwItems),
              JGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) => JBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
