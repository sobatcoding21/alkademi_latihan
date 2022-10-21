import 'package:flutter/material.dart';

class ShopChartPage extends StatefulWidget {
  const ShopChartPage({super.key});

  @override
  State<ShopChartPage> createState() => _ShopChartPageState();
}

class _ShopChartPageState extends State<ShopChartPage> {
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
            return Container(
              color: Colors.teal.shade200,
              padding: const EdgeInsets.all(40.0),
              child: Text(items[index]),
            );
          }),
    );
  }
}
