import 'package:alkademi_latihan/container_widget.dart';
import 'package:alkademi_latihan/minggu2/asset_screen.dart';
import 'package:alkademi_latihan/minggu2/hello_world.dart';
import 'package:alkademi_latihan/minggu3/shooping_cart_part2.dart';
import 'package:alkademi_latihan/minggu3/shoping_cart_dinamic.dart';
import 'package:alkademi_latihan/minggu3/shopping_cart.dart';
import 'package:alkademi_latihan/minggu3/state_screen.dart';
import 'package:alkademi_latihan/minggu4/catalog.dart';
import 'package:alkademi_latihan/minggu6/catalog.dart';
import 'package:alkademi_latihan/minggu6/http_screen.dart';
import 'package:alkademi_latihan/models/carts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alkademi Latihan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Alkademi - Latihan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double wscreen = MediaQuery.of(context).size.width;
    final double wContainer = wscreen / 4;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_balance_wallet_rounded),
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(0),
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            const SizedBox(
                width: double.infinity,
                child: Text("MINGGU 2", textAlign: TextAlign.center)),
            Row(children: [
              WidgetContainer(
                  width: wscreen / 2,
                  height: wContainer,
                  color: Colors.red.shade100,
                  title: "Hello World",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HelloWorld()));
                  }),
              WidgetContainer(
                  width: wscreen / 2,
                  height: wContainer,
                  color: Colors.red.shade300,
                  title: "Asset",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PageAsset()));
                  }),
            ]),
            const SizedBox(
                width: double.infinity,
                child: Text("MINGGU 3", textAlign: TextAlign.center)),
            Row(children: [
              WidgetContainer(
                  width: wContainer,
                  height: wContainer,
                  color: Colors.teal.shade100,
                  title: "Statful & Statles",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PageState()));
                  }),
              WidgetContainer(
                  width: wContainer,
                  height: wContainer,
                  color: Colors.teal.shade300,
                  title: "Shopping Chart",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShopChartPage()));
                  }),
              WidgetContainer(
                  width: wContainer,
                  height: wContainer,
                  color: Colors.teal.shade400,
                  title: "Shopping Chart List Tile",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShopingCartPart2()));
                  }),
              WidgetContainer(
                  width: wContainer,
                  height: wContainer,
                  color: Colors.teal.shade500,
                  title: "Shopping Chart Models",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ShopingChartDinamic()));
                  })
            ]),
            const SizedBox(
                width: double.infinity,
                child: Text("MINGGU 4", textAlign: TextAlign.center)),
            Row(children: [
              WidgetContainer(
                  width: wscreen / 3,
                  height: wContainer,
                  color: Colors.red.shade100,
                  title: "CATALOG PRODUCT",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CatalogPage()));
                  }),
            ]),
            const SizedBox(
                width: double.infinity,
                child: Text("MINGGU 5", textAlign: TextAlign.center)),
            Row(
              children: [
                WidgetContainer(
                    width: wscreen / 3,
                    height: wContainer,
                    color: Colors.red.shade100,
                    title: "SHOPPING CART",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CatalogChart()));
                    }),
                WidgetContainer(
                    width: wscreen / 3,
                    height: wContainer,
                    color: Colors.red.shade100,
                    title: "HTTP EXAMPLE",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HttpPage()));
                    }),
                WidgetContainer(
                    width: wscreen / 3,
                    height: wContainer,
                    color: Colors.red.shade100,
                    title: "SHOPPING CART FIREBASE",
                    onPressed: () {
                      //
                    }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        tooltip: 'Alkademi',
        child: const FlutterLogo(
          size: 20,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
