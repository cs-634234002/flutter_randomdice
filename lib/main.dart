import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Random Dice"),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.amber,
        body: Randomdice(),
      ),
    );
  }
}

class Randomdice extends StatefulWidget {
  Randomdice({super.key});

  @override
  State<Randomdice> createState() => _RandomdiceState();
}

class _RandomdiceState extends State<Randomdice> {
  var randomnumber1 = Random().nextInt(5);

  var randomnumber2 = Random().nextInt(5);

  void setRandomNumber() {
    setState(() {
      randomnumber1 = Random().nextInt(5);
      randomnumber2 = Random().nextInt(5);
    });
  }

  Expanded createExpanded(int randomnumber) {
    return Expanded(
      child: TextButton(
          onPressed: setRandomNumber,
          child: Image.asset('images/$randomnumber.png')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(children: [
          createExpanded(randomnumber1),
          createExpanded(randomnumber2),
        ]),
      ),
    );
  }
}
