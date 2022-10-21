import 'package:alkademi_latihan/minggu3/shoping_cart_qty.dart';
import 'package:alkademi_latihan/models/product.dart';
import 'package:flutter/material.dart';

class ShopingChartDinamic extends StatefulWidget {
  const ShopingChartDinamic({super.key});

  @override
  State<ShopingChartDinamic> createState() => _ShopingChartDinamicState();
}

class _ShopingChartDinamicState extends State<ShopingChartDinamic> {

  final List<Product> items = [
    Product(id: "1", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg"),
    Product(id: "2", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg"),
    Product(id: "3", name: "Sepatu kece", price: 10000, image: "assets/images/shoes3.jpg"),
    Product(id: "4", name: "Sepatu kece", price: 10000, image: "assets/images/shoes1.jpeg"),
    Product(id: "5", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg"),
    Product(id: "6", name: "Sepatu kece", price: 10000, image: "assets/images/shoes3.jpg"),
    Product(id: "7", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg"),
    Product(id: "8", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg"),
    Product(id: "9", name: "Sepatu kece", price: 10000, image: "assets/images/shoes1.jpeg"),
    Product(id: "10", name: "Sepatu kece", price: 10000, image: "assets/images/shoes2.jpg")

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade400,
        title: const Text("Shopping Cart Page"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text("${items[index].name} $index" ),
                    leading: Image.asset(items[index].image.toString(), height: 56.0, width: 56.0, fit: BoxFit.cover),
                    subtitle: Text('Rp${items[index].price}', style: const TextStyle(fontWeight: FontWeight.bold),),
                    //trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () {},),
                  ),
                  const ShoppingCartItemQty()
                ],
              ),
            );
          }),
    );
  }
}