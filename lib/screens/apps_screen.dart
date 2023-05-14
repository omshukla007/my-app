import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: const Text('Applications')
        ),
        body:const Text('Empty Screen'),
    )
    );
  }
}
