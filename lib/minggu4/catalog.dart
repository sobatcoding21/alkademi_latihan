import 'package:alkademi_latihan/main.dart';
import 'package:alkademi_latihan/minggu4/catalog_card.dart';
import 'package:alkademi_latihan/models/product.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          id: "1",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg"),
      Product(
          id: "2",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg"),
      Product(
          id: "3",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes3.jpg"),
      Product(
          id: "4",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes1.jpeg"),
      Product(
          id: "5",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg"),
      Product(
          id: "6",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes3.jpg"),
      Product(
          id: "7",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg"),
      Product(
          id: "8",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg"),
      Product(
          id: "9",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes1.jpeg"),
      Product(
          id: "10",
          name: "Sepatu kece",
          price: 10000,
          image: "assets/images/shoes2.jpg")
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.menu), tooltip: 'Menu', onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage(title: 'Alkademi - Latihan')));
            }),
        title: const Text('Catalog'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Shopping Cart',
          )
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) {
        return CatalogProductCard(product: products[index]);
      },),
    );
  }
}
