import 'package:ecom/common/styles/spacing_styles.dart';
import 'package:ecom/common/widgets/login_signup/form_divider.dart';
import 'package:ecom/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecom/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecom/utils/constants/sizes.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: JSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              JLoginHeader(dark: dark),
              JLoginForm(),
              JFormDivider(dark: dark, text: JTexts.orSignInWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtwSections),
              JSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
