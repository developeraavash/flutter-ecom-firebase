import 'package:ecommerce_new_design/features/authentication/controllers.onBoarding/onBoarding_controller.dart';
import 'package:ecommerce_new_design/features/authentication/screens/onboarding/widgets/OnBoardingDotNavigation.dart';
import 'package:ecommerce_new_design/features/authentication/screens/onboarding/widgets/OnBoardingScreen.dart';
import 'package:ecommerce_new_design/features/authentication/screens/onboarding/widgets/OnBoardingSkip.dart';
import 'package:ecommerce_new_design/utils/constants/image_strings.dart' as on_boarding;
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/OnBoardingNextButton.dart';

class Onboarding extends StatelessWidget {
  const  Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingScreen(image: on_boarding.TImages.onboardingImg1, title: TText.onBoardingTitle1, subTitle: TText.onBoardingSubtitle1,),
              OnBoardingScreen(image: on_boarding.TImages.onboardingImg2, title: TText.onBoardingTitle2, subTitle: TText.onBoardingSubtitle2,),
              OnBoardingScreen(image: on_boarding.TImages.onboardingImg3, title: TText.onBoardingTitle3, subTitle: TText.onBoardingSubtitle3,),
            ],
          ),

        //   Skip Button
          OnBoardingSkip(),

        //   Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),
          // SmoothPageIndicator()
        
          // Circular Button
        //
          OnBoardingNextButton()

        ],
      ),
    );
  }
}
