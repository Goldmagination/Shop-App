import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import './Product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool toggleFavorites;
  ProductsGrid(this.toggleFavorites);
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final items =
        toggleFavorites ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // create: (ctx) => items[i],
        value: items[i],
        child: ProductItem(
            // items[i].id,
            // items[i].title,
            // items[i].imageUrl,
            // items[i].price,
            ),
      ),
      itemCount: items.length,
    );
  }
}
