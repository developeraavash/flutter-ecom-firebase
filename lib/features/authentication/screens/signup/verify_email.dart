import 'package:ecommerce_new_design/common/widget/success_screen/success_screen.dart';
import 'package:ecommerce_new_design/features/authentication/screens/login/login.dart';
import 'package:ecommerce_new_design/utils/constants/image_strings.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: THelperFunc.screenHeight(), // Ensuring full screen height
          child: Padding(
            padding: EdgeInsets.all(TSize.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //   Images
                Image(
                  image: AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunc.screenWidth() * 0.6,
                ),

                const SizedBox(height: TSize.spaceBtnSections),

                Text(
                  TText.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSize.spaceBtnSections),

                Text(
                  "aavash.dev@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: TSize.spaceBtnSections),

                Text(
                  TText.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: TSize.spaceBtnSections),

                //   Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:
                        () => Get.to(
                          () => SuccessScreen(
                            image: TImages.staticSuccessIllustration,
                            title: TText.yourAccountCreatedTitle,
                            subTitle: TText.yourAccountCreatedSubTitle,

                            onPressed: () {},
                          ),
                        ),
                    child: const Text(TText.tContinue),
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
      ),
    );
  }
}
