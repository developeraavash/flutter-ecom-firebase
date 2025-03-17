import 'package:ecommerce_new_design/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   Heading
            Text(
              TText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: TSize.spaceBtnItems),

            Text(
              TText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: TSize.spaceBtnSections * 2),

            //   Text feild
            TextFormField(
              decoration: InputDecoration(
                labelText: TText.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            SizedBox(height: TSize.spaceBtnSections),

            //   Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => ResetPassword()),
                child: Text(TText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
