import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;
  int milk = 1;
  void increaseStrength() {
    setState(() {
      strength = strength < 7 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugar = sugar < 7 ? sugar + 1 : 0;
    });
  }

  void increaseMilk() {
    setState(() {
      milk = milk < 7 ? milk + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('$strength'),
            Image.asset(
              "assets/img/coffee_bean.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[700],
                // foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text("Sugars:    "),
            Text("$sugar"),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              onPressed: increaseSugars,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[200],
                foregroundColor: Colors.brown,
              ),
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text("Milk Ounces:"),
            Text("$milk"),
            Image.asset(
              "assets/img/sugar_cube.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.brown,
              ),
              onPressed: increaseMilk,
              child: Text(
                "+",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
