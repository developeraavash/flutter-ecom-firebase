
import 'package:ecommerce_new_design/features/authentication/controllers.onBoarding/onBoarding_controller.dart';
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/device/device_utility.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunc.isDarkMode(context);
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),

      child: ElevatedButton(onPressed: ()=>OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape:const CircleBorder(),backgroundColor:dark? TColors.primaryColor:Colors.black),
        child:  Icon(Iconsax.arrow_right_3),
      )
      ,
    );
  }
}
