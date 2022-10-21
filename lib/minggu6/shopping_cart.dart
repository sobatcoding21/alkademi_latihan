
import 'package:alkademi_latihan/main.dart';
import 'package:alkademi_latihan/minggu6/shopping_cart_qty2.dart';
import 'package:alkademi_latihan/minggu6/shopping_cart_total.dart';
import 'package:alkademi_latihan/models/carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopingCartProvider extends StatefulWidget {
  const ShopingCartProvider({super.key});

  @override
  State<ShopingCartProvider> createState() => _ShopingCartProviderState();
}

class _ShopingCartProviderState extends State<ShopingCartProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const MyHomePage(title: 'Alkademi - Latihan')));
            }),
        title: const Text('Shopping Cart')
      ),
      body:
          Consumer<Cart>(builder: (BuildContext context, Cart cart, Widget? child) {
        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: cart.items.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    cart.items[index].product.image.toString(),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cart.items[index].product.name.toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text('Rp${cart.items[index].product.price}',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_outline)),
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_outlined),
                              label: const Text('Add to Cart'),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.tealAccent.shade700,
                                foregroundColor: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ShoppingCartItemQtyProvider(index: index)
                ],
              ),
            );
          },
        );
      }),
      bottomNavigationBar: const ShoppingCartTotal(),
    );
  }
}