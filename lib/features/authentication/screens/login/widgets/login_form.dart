import 'package:ecom/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecom/features/authentication/screens/signup/signup.dart';
import 'package:ecom/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class JLoginForm extends StatelessWidget {
  const JLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: JSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Iconsax.direct_right),
                labelText: JTexts.email,
              ),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                  prefix: Icon(Iconsax.password_check),
                  labelText: JTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: JSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(JTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(JTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: JSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(JTexts.signIn),
              ),
            ),
            SizedBox(height: JSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(JTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
