import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String productName;
  final String imageURL;

  UserProductItem(this.productName, this.imageURL);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageURL),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
              color: Theme.of(context).errorColor,
            )
          ],
        ),
      ),
    );
  }
}
