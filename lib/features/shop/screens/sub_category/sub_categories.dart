import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/images/j_rounded_image.dart';
import 'package:ecom/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              JRoundedImage(
                width: double.infinity,
                height: null,
                imageUrl: JImages.promoBanner1,
                applyImageRadius: true,
              ),
              SizedBox(height: JSizes.spaceBtwSections),
              Column(
                children: [
                  JSectionHeading(
                    title: 'Sport shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: JSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const JProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
