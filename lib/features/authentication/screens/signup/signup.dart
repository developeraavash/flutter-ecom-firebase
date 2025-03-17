import 'package:ecommerce_new_design/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_new_design/features/authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:ecommerce_new_design/features/authentication/screens/signup/widgets/terms_and_condition_check.dart'
    show TermsAndConditionCheckbox;
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Title and Subtitle
              Text(
                TText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSize.spaceBtnSections),

              //   Form
              const SignUpForm(),

              //   Terms and Conditions CheckBox
              TermsAndConditionCheckbox(),
              const SizedBox(height: TSize.spaceBtnSections),

              //   SignUp Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(TText.createAccount),
                ),
              ),

              const SizedBox(height: TSize.spaceBtnSections),
            ],
          ),
        ),
      ),
    );
  }
}
