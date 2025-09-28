import 'package:flutter/material.dart';
import 'package:runway/widgets/category_filter.dart';
import 'package:runway/widgets/custom_app_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Men',
        prefix: 'assets/svgs/arrow-left.svg',
        onTap: () => Navigator.pop(context),
        suffix: 'assets/svgs/cart.svg',
      ),
      body: Column(
        children: [
          ////first section
          CategoryFilter(),

          ////Products section
        ],
      ),
    );
  }
}
