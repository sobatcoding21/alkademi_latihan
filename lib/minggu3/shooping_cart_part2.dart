import 'package:flutter/material.dart';

class ShopingCartPart2 extends StatefulWidget {
  const ShopingCartPart2({super.key});

  @override
  State<ShopingCartPart2> createState() => _ShopingCartPart2State();
}

class _ShopingCartPart2State extends State<ShopingCartPart2> {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];

  final List<int> prices = [
    10000,
    15000,
    20000,
    25000,
    30000,
    35000,
    40000,
    55000,
    10000,
    15000,
  ];

  final List<String> assets = [
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg',
    'assets/images/shoes1.jpeg'
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
              child: ListTile(
                title: Text(items[index]),
                leading: Image.asset(assets[index], height: 56.0, width: 56.0, fit: BoxFit.cover),
                subtitle: Text('Rp${prices[index]}', style: const TextStyle(fontWeight: FontWeight.bold),),
                trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () {},),
              ),
            );
          }),
    );
  }
}