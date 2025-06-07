import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/brands/brand_card.dart';
import 'package:ecom/common/widgets/products/sortable/sortable_products.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              const JBrandCard(showBorder: true),
              const SizedBox(height: JSizes.spaceBtwSections),
              JSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
