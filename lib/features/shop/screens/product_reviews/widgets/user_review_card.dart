import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/products/ratings/rating_indicator.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(JImages.userProfileImage1)),
                const SizedBox(width: JSizes.spaceBtwItems),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: JSizes.spaceBtwItems),
        Row(
          children: [
            const JRatingBarIndicator(rating: 4.0),
            const SizedBox(height: JSizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: JSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: JColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: JColors.primary,
          ),
        ),
        const SizedBox(height: JSizes.spaceBtwItems),
        JRoundedContainer(
          backgroundColor: dark ? JColors.darkerGrey : JColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(JSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "J's Store",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "02 Nov, 2025",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: JSizes.spaceBtwItems),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: JColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: JColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: JSizes.spaceBtwSections)
      ],
    );
  }
}
