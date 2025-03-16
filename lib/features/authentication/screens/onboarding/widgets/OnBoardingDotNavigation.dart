
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/device/device_utility.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunc.isDarkMode(context);
    return Positioned(
        bottom:TDeviceUtils.getBottomNavigationBarHeight()+25,
        left: TSize.defaultSpace,

        child: SmoothPageIndicator(
          controller: PageController()  ,
          count: 3,

          effect:  ExpandingDotsEffect(activeDotColor: dark ? TColors.light:TColors.dark,dotHeight: 6),
        ));
  }
}


