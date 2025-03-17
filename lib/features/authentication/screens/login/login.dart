import 'package:ecommerce_new_design/common/styles/spacing_styles.dart';
import 'package:ecommerce_new_design/common/widget/login_signup/form_divider.dart';
import 'package:ecommerce_new_design/common/widget/login_signup/socials_btn.dart';
import 'package:ecommerce_new_design/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_new_design/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunc.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title and Subtitle
              const LoginHeader(),
              //   Form
              const LoginForm(),

              //   Divider  -orSignInWith
              FormDivider(dividerText: TText.orSignInWith.capitalize!),

              const SizedBox(height: TSize.spaceBtnSections),

              //   Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
