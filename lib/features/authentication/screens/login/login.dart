

import 'package:ecommerce_new_design/common/styles/spacing_styles.dart';
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/image_strings.dart';
import 'package:ecommerce_new_design/utils/constants/sizes.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:ecommerce_new_design/utils/helpers/helper_func.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Login  extends StatelessWidget {
  const Login ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunc.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title and Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(dark?TImages.lightAppLogo: TImages.darkAppLogo,),
                  height: 150,),
                  Text(TText.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: TSize.sm,)                  ,
                  Text(TText.loginSubtitle,style: Theme.of(context).textTheme.bodyMedium,),
              ],),
            //   Form
              Form(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtnSections ),
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.direct_right),
                          label: Text(TText.email)

                      ),
                    ),
                    const SizedBox(height: TSize.spaceBtnInputFeilds,),

                    // Password
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon:Icon(Iconsax.password_check),
                          label: Text(TText.password ),
                        suffixIcon: Icon(Iconsax.eye_slash)

                      ),
                    ),

                    const SizedBox(height: TSize.spaceBtnInputFeilds/2,),

                    // Remember me and Forget Password


                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Checkbox(value: true   , onChanged: (value){})
                       ,const Text(TText.rememberMe)
                     ],
                   ),
                    // Forget Password
                    TextButton(onPressed: (){}, child: const Text(TText.forgetPassword)),

                    const SizedBox(height: TSize.spaceBtnSections,),

                    //   Signin button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text(TText.signIn)),
                    ),

                    const SizedBox(height: TSize.spaceBtnInputFeilds,),

                    //   Create a account button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: (){},
                          child: Text(TText.createAccount)),
                    )
                  ],

                ),
              ),
              ),
            //   Divider
Row(

  mainAxisAlignment: MainAxisAlignment.center,
  children: [
Divider(color: dark? TColors.darkGrey:TColors.grey,
thickness: 0.5,
  indent: 60,
  endIndent: 5,
)
],)

            ],
          ),
        ),
      ),
    );
  }
}
