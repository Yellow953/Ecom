import 'package:ecom/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widgets/product_detail_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
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

                  /// Price, Title, Stack. Brand
                  JProductMetaData(),

                  /// Attributes
                  /// Checkout Button
                  /// Description
                  /// Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
