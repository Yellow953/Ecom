import 'package:ecom/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class JSignupForm extends StatelessWidget {
  const JSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: JTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(width: JSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: JTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: JTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            TextFormField(
              decoration: const InputDecoration(
                labelText: JTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            TextFormField(
              decoration: const InputDecoration(
                labelText: JTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: JTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),

            JTermsAndConditions(dark: dark),
            const SizedBox(height: JSizes.spaceBtwSections),
            
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(JTexts.createAccount))
            ),
          ],
        )
    );
  }
}