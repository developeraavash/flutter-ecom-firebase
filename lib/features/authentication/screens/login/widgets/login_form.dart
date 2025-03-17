import 'package:ecommerce_new_design/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce_new_design/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtnSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(TText.email),
              ),
            ),
            const SizedBox(height: TSize.spaceBtnInputFeilds),

            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text(TText.password),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: TSize.spaceBtnInputFeilds / 2),

            // Remember me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TText.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgetPassword()),
                  child: const Text(TText.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSize.spaceBtnSections),

            const SizedBox(height: TSize.spaceBtnSections),

            //   Signin button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TText.signIn),
              ),
            ),

            const SizedBox(height: TSize.spaceBtnInputFeilds),

            //   Create a account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const Signup()),
                child: Text(TText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
