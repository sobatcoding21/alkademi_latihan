import 'package:alkademi_latihan/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPageProvider extends StatelessWidget {
  const ProductDetailPageProvider({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Product'),
        ),
        body: ListView(children: [
          Image.asset(
            product.image.toString(),
            height: 300,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              'Rp${product.price}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(product.name.toString(),
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            title: const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(product.description.toString(),
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
        ]),
        persistentFooterButtons: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.tealAccent.shade700
              ),
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
                label: const Text('Add to Cart')),
                
          )
        ]);
  }
}
