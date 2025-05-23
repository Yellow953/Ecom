import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class JCartItems extends StatelessWidget {
  const JCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: JSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          const JCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: JSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    JProductQuantityWithAddRemoveButton(),
                  ],
                ),
                JProductPriceText(price: '256')
              ],
            ),
        ],
      ),
    );
  }
}
