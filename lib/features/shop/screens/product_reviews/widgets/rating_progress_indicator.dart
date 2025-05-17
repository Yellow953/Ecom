import 'package:ecom/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class JOverallProductRating extends StatelessWidget {
  const JOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4,8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              JRatingProgressIndicator(
                text: '5',
                value: 4.5,
              ),
              JRatingProgressIndicator(
                text: '4',
                value: 3.2,
              ),
              JRatingProgressIndicator(
                text: '3',
                value: 2.7,
              ),
              JRatingProgressIndicator(
                text: '2',
                value: 0.5,
              ),
              JRatingProgressIndicator(
                text: '1',
                value: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
