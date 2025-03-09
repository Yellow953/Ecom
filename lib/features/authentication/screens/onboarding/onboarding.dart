import 'package:ecom/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecom/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: JImages.onBoardingImage1, title: JTexts.onBoardingTitle1, subTitle: JTexts.onBoardingSubTitle1),
              OnBoardingPage(image: JImages.onBoardingImage2, title: JTexts.onBoardingTitle2, subTitle: JTexts.onBoardingSubTitle2),
              OnBoardingPage(image: JImages.onBoardingImage3, title: JTexts.onBoardingTitle3, subTitle: JTexts.onBoardingSubTitle3),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}