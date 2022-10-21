import 'package:flutter/material.dart';

class PageState extends StatefulWidget {
  const PageState({super.key});

  @override
  State<PageState> createState() => _PageStateState();
}

class _PageStateState extends State<PageState> {
  Color _worldColor = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list, color: Colors.grey),
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: FlutterLogo(
                size: 50,
              )),
          const Text(
            "Hello",
            style: TextStyle(color: Colors.black, fontSize: 40),
            textDirection: TextDirection.ltr,
          ),
          Text(
            "World",
            style: TextStyle(color: _worldColor, fontSize: 60),
            textDirection: TextDirection.ltr,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.blue.shade700;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade700),
                  child: const Text("BIRU")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.green.shade700;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade700),
                  child: const Text("HIJAU")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _worldColor = Colors.red.shade700;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade700),
                  child: const Text("MERAH"))
            ],
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
