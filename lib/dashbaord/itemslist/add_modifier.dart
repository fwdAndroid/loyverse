import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/itemslist/categorylist.dart';
import 'package:loyverse/dashbaord/itemslist/itemslist.dart';
import 'package:loyverse/dashbaord/itemslist/modifierslist.dart';
import 'package:loyverse/widgets/my_drawer.dart';

enum SingingCharacter { sold, volume }

class AddModifier extends StatefulWidget {
  const AddModifier({super.key});

  @override
  State<AddModifier> createState() => _AddModifierState();
}

class _AddModifierState extends State<AddModifier> {
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
          "Create Modifier",
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
                "Modifier Name",
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
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Option Name",
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
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Price",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.delete),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),

                      borderSide: BorderSide(
                          width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                    ),
                    border: InputBorder.none,
                    hintText: "23",
                    fillColor: Color(0xffF5F6FA),
                    filled: true),
              )),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: TextButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (builder) => ModifierList()));
              },
              child: Text("Add Option"),
            ),
          ),
          SizedBox(
            height: 10,
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
                            builder: (builder) => ModifierList()));
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
                            builder: (builder) => ModifierList()));
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
