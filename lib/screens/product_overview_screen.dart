import 'package:flutter/material.dart';

import '../widgets/Product_grid.dart';

enum FilterOptions { Favorites, ALL }

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                        child: Text('Show only Favorites!'),
                        value: FilterOptions.Favorites),
                    PopupMenuItem(
                        child: Text('Show all!'), value: FilterOptions.ALL),
                  ]),
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
