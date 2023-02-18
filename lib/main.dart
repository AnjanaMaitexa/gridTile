import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gridtile/custom_checkbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  CustomCheckbox(),
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
  final List<Map> _products = List.generate(
      100,
          (index) => {
        "id": index,
        "name": "Product $index",
        "price": Random().nextInt(100)
      }).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KindaCode.com'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: _products.length,
          itemBuilder: (BuildContext ctx, index) {
            return GridTile(
              key: ValueKey(_products[index]['id']),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                title: Text(
                  _products[index]['name'],
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("\$${_products[index]['price'].toString()}"),
                trailing: const Icon(Icons.shopping_cart),
              ),
              child: Image.network(
                'https://www.kindacode.com/wp-content/uploads/2021/12/phone.jpeg',
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}