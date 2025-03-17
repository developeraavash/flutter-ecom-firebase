import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunc.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (v) => {}),
        ),
        const SizedBox(width: TSize.spaceBtnItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: TText.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TText.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.textWhite : TColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? TColors.textWhite : TColors.primaryColor,
                ),
              ),
              TextSpan(
                text: TText.and,
                style: Theme.of(context).textTheme.bodySmall,
              ),

              //   Terms of use
              TextSpan(
                text: TText.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.textWhite : TColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      dark ? TColors.textWhite : TColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
