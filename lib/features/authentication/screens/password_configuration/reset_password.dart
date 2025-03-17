import 'package:ecommerce_new_design/common/styles/spacing_styles.dart';
import 'package:ecommerce_new_design/utils/constants/image_strings.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart'
    show THelperFunc;
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunc.screenWidth() * 0.6,
              ),

              const SizedBox(height: TSize.spaceBtnSections),
              // title and subtitle
              Text(
                TText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtnSections),

              Text(
                TText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSize.spaceBtnSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TText.done),
                ),
              ),
              const SizedBox(height: TSize.spaceBtnSections),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
