import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/product_model.dart';
import 'package:runway/screens/products_detailes.dart';
import 'package:runway/widgets/category_filter.dart';
import 'package:runway/widgets/custom_app_bar.dart';
import 'package:runway/widgets/product_item.dart';

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
          Gap(15),
          ////Products section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: ProductModel.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 1 / 1.8,
                ),
                itemBuilder: (context, index) {
                  final item = ProductModel.products[index];
                  return ProductItem(
                    name: item.name,
                    price: item.price,
                    image: item.image,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => ProductsDetailsScreen(
                          image: item.image,
                          name: item.name,
                          price: item.price,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
