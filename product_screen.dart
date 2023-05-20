import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: const Text('Product')
          ),
          body:const Text('in progress coming soon'),
        )
    );
  }
}
