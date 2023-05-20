import 'package:flutter/material.dart';

import 'user_profile.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle slide more option
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Handle notification option
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserCard()),
                );
                // Handle account option
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  6,
                      (index) => Card(
                    child: Center(
                      child: Text('Poster ${index + 1}'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
