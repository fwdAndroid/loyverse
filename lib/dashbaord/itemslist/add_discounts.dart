import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/itemslist/categorylist.dart';
import 'package:loyverse/dashbaord/itemslist/discountlist.dart';
import 'package:loyverse/dashbaord/itemslist/itemslist.dart';
import 'package:loyverse/widgets/my_drawer.dart';

enum SingingCharacter { sold, volume }

class AddDiscounts extends StatefulWidget {
  const AddDiscounts({super.key});

  @override
  State<AddDiscounts> createState() => _AddDiscountsState();
}

class _AddDiscountsState extends State<AddDiscounts> {
  SingingCharacter? _character = SingingCharacter.sold;
  List<String> displayList = <String>[
    'Category 1',
    "Category 2",
    "Category 3",
    "Category 4",
  ];
  String drop = "Category 1";
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Create Discount",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                    ),
                    border: InputBorder.none,
                    hintText: "Fawad Kaleem",
                    fillColor: Color(0xffF5F6FA),
                    filled: true),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Percentage',
                        style: TextStyle(fontSize: 11),
                      ),
                      leading: Radio(
                        value: SingingCharacter.sold,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Amount',
                        style: TextStyle(fontSize: 11),
                      ),
                      leading: Radio(
                        value: SingingCharacter.volume,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Value",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                    ),
                    border: InputBorder.none,
                    hintText: "Fawad Kaleem",
                    fillColor: Color(0xffF5F6FA),
                    filled: true),
              )),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            title: const Text('The item is available of sale'),
            value: timeDilation != 1.0,
            onChanged: (bool? value) {
              setState(() {
                timeDilation = value! ? 10.0 : 1.0;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => DiscountList()));
                  },
                  child: Text("Save"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => DiscountList()));
                  },
                  child: Text("Cancel"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
