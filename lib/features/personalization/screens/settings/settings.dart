import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecom/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/features/personalization/screens/profile/profile.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JPrimaryHeaderContainer(
              child: Column(
                children: [
                  JAppBar(
                      title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: JColors.white),
                  )),
                  JUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: JSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(JSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Account Settings
                  const JSectionHeading(
                    title: 'Account Settings',
                    showActionsButton: false,
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems),
                  const JSettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout...',
                    icon: Iconsax.shopping_cart,
                  ),
                  const JSettingsMenuTile(
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders...',
                    icon: Iconsax.bag_tick,
                  ),
                  const JSettingsMenuTile(
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account...',
                    icon: Iconsax.bank,
                  ),
                  const JSettingsMenuTile(
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted coupons...',
                    icon: Iconsax.discount_shape,
                  ),
                  const JSettingsMenuTile(
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message...',
                    icon: Iconsax.notification,
                  ),
                  const JSettingsMenuTile(
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts...',
                    icon: Iconsax.security_card,
                  ),

                  /// -- App Settings
                  const SizedBox(height: JSizes.spaceBtwSections),
                  const JSectionHeading(
                    title: 'App Settings',
                    showActionsButton: false,
                  ),
                  const SizedBox(height: JSizes.spaceBtwItems),
                  const JSettingsMenuTile(
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Cloud Firebase...',
                    icon: Iconsax.document_upload,
                  ),
                  JSettingsMenuTile(
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location...',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  JSettingsMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages...',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  JSettingsMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen...',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  /// -- Logout Button
                  const SizedBox(height: JSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: JSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
