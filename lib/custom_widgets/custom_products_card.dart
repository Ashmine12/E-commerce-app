import 'package:flutter/material.dart';

class CustomProductsCard extends StatelessWidget {
  const CustomProductsCard(
      {super.key,
      required this.price,
      required this.title,
      required this.image});
  final dynamic price;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 200,
      width: 200,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Image(
              image: NetworkImage(image),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
          Text("Price: $price",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
        ],
      ),
    ));
  }
}
