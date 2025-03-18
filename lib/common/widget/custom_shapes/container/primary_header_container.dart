import 'package:ecommerce_new_design/common/widget/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_new_design/common/widget/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:ecommerce_new_design/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
