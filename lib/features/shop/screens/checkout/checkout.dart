import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecom/common/widgets/success_screen/success_screen.dart';
import 'package:ecom/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecom/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecom/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecom/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecom/navigation_menu.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';
import '../../../../utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: JAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in cart
              const JCartItems(showAddRemoveButtons: false),
              const SizedBox(height: JSizes.spaceBtwSections),

              /// Coupon TextField
              JCouponCode(),
              const SizedBox(height: JSizes.spaceBtwSections),

              /// Billing
              JRoundedContainer(
                showBorder: true,
                backgroundColor: dark ? JColors.black : JColors.white,
                padding: EdgeInsets.all(JSizes.md),
                child: const Column(
                  children: [
                    /// Pricing
                    JBillingAmountSection(),
                    SizedBox(height: JSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: JSizes.spaceBtwItems),

                    /// Payment Methods
                    JBillingPaymentSection(),
                    SizedBox(height: JSizes.spaceBtwItems),

                    /// Address
                    JBillingAddressSection(),
                    SizedBox(height: JSizes.spaceBtwItems),
                  ],
                ),
              ),
              const SizedBox(height: JSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(JSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                image: JImages.successfulPaymentIcon,
                title: 'Payment Success!',
                subTitle: 'Your Item will be shipped soon!',
                onPressed: () => Get.to(() => const NavigationMenu()))),
            child: Text('Checkout \$ 256.0')),
      ),
    );
  }
}
