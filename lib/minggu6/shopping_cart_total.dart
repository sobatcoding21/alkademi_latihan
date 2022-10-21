import 'package:alkademi_latihan/models/carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartTotal extends StatelessWidget {
  const ShoppingCartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.tealAccent.shade700))),
      child: Consumer<Cart>(
        builder: (BuildContext context, Cart cart, Widget? child) {
          return ListTile(
            title: const Text(
              'Total Price',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
            subtitle: Text(
              'Rp${cart.totalPrice}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            trailing: ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 150),
              child: TextButton(
                onPressed: () {
                  null;
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: cart.items.isNotEmpty
                        ? Colors.tealAccent.shade700
                        : Colors.grey.shade400),
                child: const Text('Checkout'),
              ),
            ),
          );
        },
      ),
    );
  }
}
