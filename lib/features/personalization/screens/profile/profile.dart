import 'package:ecom/common/widgets/appbar/appbar.dart';
import 'package:ecom/common/widgets/images/j_circular_image.dart';
import 'package:ecom/common/widgets/texts/section_heading.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const JCircularImage(
                      image: JImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: JSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: JSizes.spaceBtwItems),

              /// Heading Profile Info
              const JSectionHeading(
                title: 'Profile Information',
                showActionsButton: false,
              ),
              const SizedBox(height: JSizes.spaceBtwItems),

              JProfileMenu(
                title: 'Name',
                value: 'Joe Mazloum',
                onPressed: () {},
              ),
              JProfileMenu(
                title: 'Username',
                value: 'Joe953',
                onPressed: () {},
              ),

              const SizedBox(height: JSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: JSizes.spaceBtwItems),

              /// Heading Personal Info
              const JSectionHeading(
                title: 'Personal Information',
                showActionsButton: false,
              ),
              const SizedBox(height: JSizes.spaceBtwItems),

              JProfileMenu(
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              JProfileMenu(
                title: 'Email',
                value: 'joemazloum953@gmail.com',
                onPressed: () {},
              ),
              JProfileMenu(
                title: 'Phone Number',
                value: '70285659',
                onPressed: () {},
              ),
              JProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              JProfileMenu(
                title: 'Date Of Birth',
                value: '21 Sept, 2001',
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(height: JSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
