import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class JBillingAddressSection extends StatelessWidget {
  const JBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        JSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Joe Mazloum',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: JSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: JSizes.spaceBtwItems),
            Text('+961 70 285 659',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: JSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: JSizes.spaceBtwItems),
            Text(
              'Lebanon, Beirut',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
