import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list,color: Colors.grey),
        title: const Text(
          "Hello Flutter World",
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.grey))
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: const AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
        )),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Hello",
                style: TextStyle(color: Colors.black, fontSize: 40),
                textDirection: TextDirection.ltr,
              ),
              Text(
                "World",
                style: TextStyle(color: Colors.black, fontSize: 60),
                textDirection: TextDirection.ltr,
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          tooltip: "Back",
          child: const Icon(Icons.arrow_back)),
    );
  }
}
