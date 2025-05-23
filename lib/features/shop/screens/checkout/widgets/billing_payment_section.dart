import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class JBillingPaymentSection extends StatelessWidget {
  const JBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        JSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: JSizes.spaceBtwItems / 2),
        Row(
          children: [
            JRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? JColors.light : JColors.white,
              padding: const EdgeInsets.all(JSizes.sm),
              child: const Image(
                image: AssetImage(JImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: JSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
