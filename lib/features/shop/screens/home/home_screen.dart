import 'package:ecommerce_new_design/common/widget/appbar/appbar.dart';
import 'package:ecommerce_new_design/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          TText.homeAppBarTitle,
                          style: Theme.of(
                            context,
                          ).textTheme.labelMedium!.apply(color: TColors.grey),
                        ),
                        Text(
                          TText.homeAppBarSubTitle,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: TColors.textWhite),
                        ),
                      ],
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.shopping_bag),
                        color: TColors.textWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
