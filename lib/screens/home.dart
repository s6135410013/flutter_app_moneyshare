import 'package:flutter/material.dart'
    show
        AlertDialog,
        AppBar,
        BorderRadius,
        BorderSide,
        BuildContext,
        Center,
        Checkbox,
        Colors,
        Column,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        Icon,
        Icons,
        Image,
        InputDecoration,
        Key,
        MainAxisAlignment,
        MaterialPageRoute,
        MediaQuery,
        Navigator,
        Padding,
        RoundedRectangleBorder,
        Row,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextEditingController,
        TextField,
        TextInputType,
        TextStyle,
        UnderlineInputBorder,
        Widget,
        showDialog;
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_app_moneyshare/screens/money_share.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

bool checkTip = false;
//สร้างตัวควบคุมTextField แล้วผูกกับTextField
TextEditingController txMoney = TextEditingController();
TextEditingController txPerson = TextEditingController();
TextEditingController txTip = TextEditingController();
showWarningDialog(context, msg) {
  //
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
            ),
            child: Text(
              "คำเตือน :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                msg,
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "ตกลง",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      });
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text(
          "แชร์เงินกันเถอะ",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[400],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  controller: txMoney,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.moneyBillWave,
                      size: 30,
                      color: Colors.deepPurple,
                    ),
                    hintText: '   ใส่จำนวนเงิน(บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  controller: txPerson,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.deepPurple,
                    ),
                    hintText: '   ใส่จำนวนเงิน(บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checkTip,
                    onChanged: (data) {
                      //อะไรก็ตามที่มีผลต่อการแสดงผล ต้องอยู่ภายใต้คำสั่งsetState
                      setState(() {
                        if (data != null) {
                          checkTip = data;
                          if (data == false) {
                            txTip.text = "";
                          }
                        }
                      });
                    },
                    hoverColor: Colors.deepPurple,
                    checkColor: Colors.white,
                    activeColor: Colors.deepPurple,
                    side: BorderSide(
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    "ทิปให้พนักงานเสิร์ฟ",
                    style: TextStyle(
                      color: Colors.deepPurple[600],
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: TextField(
                  enabled: checkTip,
                  style: TextStyle(
                    color: Colors.deepPurple,
                  ),
                  controller: txTip,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.coins,
                      size: 30,
                      color: Colors.deepPurple,
                    ),
                    hintText: '   ใส่จำนวนเงินทิป(บาท)',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (txMoney.text.length == 0) {
                    showWarningDialog(
                      context,
                      "ใส่จำนวนเงินด้วยจ้า",
                    );
                  } else if (txPerson.text.length == 0) {
                    showWarningDialog(
                      context,
                      "ป้อนจำนวนคนด้วยจ้า",
                    );
                  } else {
                    if (checkTip == true) {
                      if (txTip.text.length == 0) {
                        showWarningDialog(
                          context,
                          "ป้อนทิปด้วยจ้า",
                        );
                        return;
                      }
                    }
                  }

                  double money = 0;
                  int person = 0;
                  double tip = 0;
                  double moneyshare = 0;

                  money = double.parse(txMoney.text);
                  person = int.parse(txPerson.text);
                  tip = checkTip == true ? double.parse(txTip.text) : 0;
                  moneyshare = (money + tip) / person;
                  //เช็คว่าป้อนข้อมูลหรือยัง ถ้ายัง ให้แสดงDialogเตือน
                  //ถ้าป้อนครบแล้วให้คำนวณ และเมื่อคำนวณแล้ว ให้ส่งข้อมูลไปแสดงผลหน้าMoneyShare
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MoneyShare(
                            get_money: money,
                            get_person: person,
                            get_tip: tip,
                            get_moneyshare: moneyshare);
                      },
                    ),
                  );
                },
                child: Text(
                  "คำนวณ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - 80, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  primary: Colors.deepPurple,
                  elevation: 18.0,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    txTip.text = "";
                    txMoney.text = "";
                    txPerson.text = "";
                    checkTip = false;
                  });
                },
                icon: Icon(
                  Icons.refresh,
                ),
                label: Text(
                  "ยกเลิก",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width - 80, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  primary: Colors.deepOrange,
                  elevation: 18.0,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Create by \nUvuvwevwevwe onyetenyevwe ugwemuhwem osas",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
