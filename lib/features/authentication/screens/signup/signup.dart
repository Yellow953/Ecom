import 'package:ecom/common/widgets/login_signup/social_buttons.dart';
import 'package:ecom/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecom/utils/constants/text_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                JTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: JSizes.spaceBtwSections),
              JSignupForm(dark: dark),
              const SizedBox(height: JSizes.spaceBtwSections),

              JFormDivider(dark: dark, text: JTexts.orSignUpWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtwSections),

              const JSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}