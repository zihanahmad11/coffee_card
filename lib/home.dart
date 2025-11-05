import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Coffee ID'),
        backgroundColor: Colors.brown[500],
        centerTitle: true,
      ),
      body: const Text('Welcome to My Coffee ID!'),
    );
  }
}
//ok