import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
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
            StyledBodyText("Strength", fontSize: 14),
            Text(
              ":",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // Text('$strength'),
            // not gonna use this anymore
            for (var i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
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
            StyledBodyText("Sugars  ", fontSize: 14),
            Text(
              ":",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            // Text("$sugar"),
            if (sugar == 0) Text("No Sugars"),
            for (var i = 0; i < sugar; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increaseSugars,
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
            StyledBodyText("Milk       ", fontSize: 14),
            Text(
              ":",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // Text("$milk"),
            if (milk == 0) Text("No Milk"),
            for (var i = 0; i < milk; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyledButton(
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
