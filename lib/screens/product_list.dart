import 'package:e_commerce_app/custom_widgets/custom_products_card.dart';
import 'package:e_commerce_app/custom_widgets/drawer.dart';
import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/screens/single_product_screen.dart';
import 'package:e_commerce_app/services/products_repo.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Products>>(
        future: fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<Products> products = snapshot.data ?? [];

            if (products.isEmpty) {
              return Center(
                child: Text('No products available.'),
              );
            }

            return GridView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SingleProductScreen(
                              id: products[index].id.toString() , title:products[index].title ??'' ,
                            )));
                  },
                  child: CustomProductsCard(
                    title: products[index].title ?? '',
                    price: products[index].price ?? '',
                    image: products[index].image ?? '',
                  ),
                );
              },
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            );
          }
        },
      ),
    );
  }
}
