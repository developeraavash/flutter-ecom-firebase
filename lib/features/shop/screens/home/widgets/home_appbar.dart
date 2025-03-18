import 'package:badges/badges.dart' as badges;
import 'package:ecommerce_new_design/common/widget/appbar/appbar.dart';
import 'package:ecommerce_new_design/common/widget/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:ecommerce_new_design/utils/constants/text_string.dart'
    show TText;
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
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
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: TColors.textWhite),
          ),
        ],
      ),
      actions: [
        badges.Badge(
          badgeContent: Text('3', style: TextStyle(color: TColors.textWhite)),
          child: Icon(Iconsax.shopping_bag),
        ),
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.textWhite),
      ],
    );
  }
}
