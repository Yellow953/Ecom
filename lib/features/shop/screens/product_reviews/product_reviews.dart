import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecom/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:ecom/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JAppBar(
        title: Text('Reviews & ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: JSizes.spaceBtwItems),
              const JOverallProductRating(),
              const JRatingBarIndicator(rating: 4.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: JSizes.spaceBtwSections),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
