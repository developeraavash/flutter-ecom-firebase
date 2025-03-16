import 'package:ecommerce_new_design/features/authentication/controllers.onBoarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSize.defaultSpace,
      child: TextButton(onPressed: ()=> OnboardingController.instance.skipPage() ,
          child:const Text("Skip")
      ),);
  }
}
