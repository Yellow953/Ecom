import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class JCouponCode extends StatelessWidget {
  const JCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return JRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? JColors.dark : JColors.white,
      padding: const EdgeInsets.only(
        top: JSizes.sm,
        bottom: JSizes.sm,
        right: JSizes.sm,
        left: JSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here...',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? JColors.white.withOpacity(0.5)
                      : JColors.dark.withOpacity(0.5),
                  backgroundColor: JColors.grey.withOpacity(0.2),
                  side: BorderSide(color: JColors.grey.withOpacity(0.1))),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
