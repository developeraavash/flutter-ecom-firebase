import 'package:ecommerce_new_design/utils/constants/image_strings.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart' show TSize;
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunc.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          // I know it has no use here but i put it here so that I Can Modified It in future
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.lightAppLogo),
          height: 150,
        ),
        Text(
          TText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: TSize.sm),
        Text(
          TText.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
