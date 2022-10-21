import 'package:alkademi_latihan/models/carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartItemQtyProvider extends StatelessWidget {
  const ShoppingCartItemQtyProvider({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {
          Provider.of<Cart>(context, listen: false).removeFromCart(index);
        }, icon: const Icon(Icons.delete)),
        IconButton(onPressed: () {
          Provider.of<Cart>(context, listen: false).decItemQty(index);
        }, icon: const Icon(Icons.remove)),
        Selector<Cart,int>(
          selector: (BuildContext context, Cart cart) {
            return cart.items[index].qty;
          },
          builder: (BuildContext contect, int qty, Widget? child) {
            return Text('$qty');
          },
        ),
        IconButton(onPressed: () {
          Provider.of<Cart>(context, listen: false).incItemQty(index);
        }, icon: const Icon(Icons.add)),
      ],
    );
  }
}