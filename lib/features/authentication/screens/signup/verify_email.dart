import 'package:ecom/common/widgets/success_screen/success_screen.dart';
import 'package:ecom/features/authentication/screens/login/login.dart';
import 'package:ecom/utils/constants/image_strings.dart';
import 'package:ecom/utils/constants/text_strings.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(JSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(JImages.deliveredEmailIllustration),
                width: JHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: JSizes.spaceBtwSections),
              Text(
                JTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: JSizes.spaceBtwItems),
              Text(
                'suport@ecom.app',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: JSizes.spaceBtwItems),
              Text(
                JTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: JSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: JImages.staticSuccessIllustration,
                          title: JTexts.yourAccountCreatedTitle,
                          subTitle: JTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => LoginScreen()),
                        )),
                    child: const Text(JTexts.tContinue)),
              ),
              const SizedBox(height: JSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(JTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
