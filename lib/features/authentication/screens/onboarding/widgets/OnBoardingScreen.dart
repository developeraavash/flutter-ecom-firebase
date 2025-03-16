import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_func.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  final String image,title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
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
