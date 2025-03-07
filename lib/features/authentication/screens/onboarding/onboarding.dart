import 'package:ecom/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecom/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecom/utils/constants/colors.dart';
import 'package:ecom/utils/constants/text_strings.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

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
              OnBoardingPage(image: TImages.onBoardingImage1, title: TTexts.onBoardingTitle1, subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(image: TImages.onBoardingImage2, title: TTexts.onBoardingTitle2, subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(image: TImages.onBoardingImage3, title: TTexts.onBoardingTitle3, subTitle: TTexts.onBoardingSubTitle3),
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