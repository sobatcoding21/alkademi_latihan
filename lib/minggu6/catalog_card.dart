
import 'package:alkademi_latihan/minggu6/detail_page.dart';
import 'package:alkademi_latihan/minggu6/shopping_cart.dart';
import 'package:alkademi_latihan/models/carts.dart';
import 'package:alkademi_latihan/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogProductCardProvider extends StatelessWidget {
  const CatalogProductCardProvider({super.key,required this.product});
  final Product product;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetailPageProvider(product: product,)));
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(product.image.toString(), fit: BoxFit.cover,),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name.toString(), style: const TextStyle(fontSize: 18),),
                  Text('Rp${product.price}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
                      TextButton.icon(onPressed: () {
                        //add to cart
                        Provider.of<Cart>(context, listen: false).addToCart(product);
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShopingCartProvider()));
                      }, icon: const Icon(Icons.shopping_cart_outlined), label: const Text('Add to Cart'), style: TextButton.styleFrom(
                        backgroundColor: Colors.tealAccent.shade700,
                        foregroundColor: Colors.white,
                      ),)
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}