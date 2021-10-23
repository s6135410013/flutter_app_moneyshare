import 'package:flutter/material.dart';

class MoneyShare extends StatefulWidget {
  const MoneyShare({Key? key}) : super(key: key);

  @override
  _MoneyShareState createState() => _MoneyShareState();
}

class _MoneyShareState extends State<MoneyShare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          "ผลการแชร์เงิน",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
    );
  }
}
