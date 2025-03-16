import 'package:ecommerce_new_design/utils/constants/image_strings.dart' as on_boarding;
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/device/device_utility.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const  Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
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
          Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSize.defaultSize,
            
            child: TextButton(onPressed: (){},
              child:const Text("Skip")
          ),)


        ],
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSize),
      child: PageView(
        children: [
          Column(
            children: [
              Image(
                width: THelperFunc.screenWidth() * 0.8,
                height: THelperFunc.screenHeight() * 0.6,
                image:  AssetImage(image),
              ),
    
              Text(
               title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSize.spaceBtnItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
    
              )
            ],
          ),
        ],
      ),
    );
  }
}
