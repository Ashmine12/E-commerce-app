import 'package:e_commerce_app/screens/product_base_on_category_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Text(
          "Categories",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          thickness: 2,
          color: Colors.black,
        ),
        SizedBox(
          height: 30,
        ),
        ListTile(
          title: Text('Electronics'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CategoryWiseProductsScreen(category: 'electronics'),
              ),
            );
          },
          shape: Border.all(),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text('Jewelery'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CategoryWiseProductsScreen(category: 'jewelery'),
              ),
            );
          },
          shape: Border.all(),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text('Men\'s clothing'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CategoryWiseProductsScreen(category: 'men\'s clothing'),
              ),
            );
          },
          shape: Border.all(),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text('Women\'s clothing'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    CategoryWiseProductsScreen(category: 'women\'s clothing'),
              ),
            );
          },
          shape: Border.all(),
        )
      ]),
    );
  }
}
