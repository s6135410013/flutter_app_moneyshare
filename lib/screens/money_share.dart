import 'package:flutter/material.dart';

class MoneyShare extends StatefulWidget {
  double get_money = 0;
  int get_person = 0;
  double get_tip = 0;
  double get_moneyshare = 0;
  MoneyShare({
    Key? key,
    required this.get_money,
    required this.get_person,
    required this.get_tip,
    required this.get_moneyshare,
  }) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ยอดเงินรวมทั้งหมด",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.get_money.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "     บาท",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "จำนวนคนหาร",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.get_person.toString(),
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "     คน",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "จำนวนทิป",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.get_tip.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "     บาท",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "จำนวนเงินต่อคนที่ต้องจ่าย",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.deepPurpleAccent[400],
                width: MediaQuery.of(context).size.width - 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.get_moneyshare.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "   บาท",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
