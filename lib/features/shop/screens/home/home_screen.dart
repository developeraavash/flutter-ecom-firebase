import 'package:ecommerce_new_design/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: SingleChildScrollView(
        child: Column(children: [TPrimaryHeaderContainer(child: Container())]),
      ),
    );
  }
}
