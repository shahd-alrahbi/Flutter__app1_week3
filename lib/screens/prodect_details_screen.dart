import 'package:class1_17_9/model/prodects_model.dart';
import 'package:flutter/material.dart';

class ProdectDetailsScreen extends StatelessWidget {
  ProdectDetailsScreen({super.key, required this.product});

  ProdectModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Description"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(tag: product.name!, child: Image.network(product.image!)),
            Text(product.name!),
            Text(product.category!),
            Text(product.price.toString()),
          ],
        ),
      ),
    );
  }
}
