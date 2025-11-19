import 'package:coffee_card/coffee_prefs.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Coffee Card',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown[500],
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/img/coffee_bg.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.brown[200]!.withOpacity(0.7),
                padding: const EdgeInsets.all(20),
                child: StyledBodyText(
                  "How I like my coffee....",
                ),
              ),
              Container(
                color: Colors.brown[100]!.withOpacity(0.7),
                padding: const EdgeInsets.all(20),
                child: const CoffeePrefs(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
