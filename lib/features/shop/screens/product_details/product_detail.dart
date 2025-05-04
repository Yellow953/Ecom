import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_attributes.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: JBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            JProductImageSlider(),

            /// Product Details
            Padding(
              padding: EdgeInsets.only(
                right: JSizes.defaultSpace,
                left: JSizes.defaultSpace,
                bottom: JSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Rating & Share
                  JRatingAndShare(),
                  const SizedBox(height: JSizes.spaceBtwItems),

                  /// Price, Title, Stack. Brand
                  JProductMetaData(),
                  const SizedBox(height: JSizes.spaceBtwItems),

                  /// Attributes
                  JProductAttributes(),
                  const SizedBox(height: JSizes.spaceBtwSections),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections),

                  /// Description
                  const JSectionHeading(
                    title: 'Description',
                    showActionsButton: false,
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else. ',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more...',
                    trimExpandedText: ' Less...',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: JSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JSectionHeading(
                          title: 'Reviews(199)', showActionsButton: false),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
