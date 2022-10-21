import 'package:flutter/material.dart';

class ShoppingCartItemQty extends StatefulWidget {
  const ShoppingCartItemQty({super.key});

  @override
  State<ShoppingCartItemQty> createState() => _ShoppingCartItemQtyState();
}

class _ShoppingCartItemQtyState extends State<ShoppingCartItemQty> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        IconButton(onPressed: () {
          setState(() {
            if( qty > 1 ) qty--;
          });
        }, icon: const Icon(Icons.remove)),
        Text('$qty'),
        IconButton(onPressed: () {
          setState(() {
            qty++;
          });
        }, icon: const Icon(Icons.add)),
      ],
    );
  }
}