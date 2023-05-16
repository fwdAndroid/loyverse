import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/employee/employee_list.dart';
import 'package:loyverse/dashbaord/itemslist/categorylist.dart';
import 'package:loyverse/dashbaord/itemslist/itemslist.dart';
import 'package:loyverse/widgets/my_drawer.dart';

enum SingingCharacter { sold, volume }

class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  SingingCharacter? _character = SingingCharacter.sold;
  List<String> displayList = <String>[
    'Administrator',
    "Manager",
    "Cashier",
  ];
  String drop = "Administrator 1";
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Create Employee",
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
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Emil",
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
                "Phone",
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
          // Text(
          //   "Gross Sales",
          //   style: TextStyle(
          //       color: Colors.black, fontSize: 17, fontWeight: FontWeight.w900),
          // ),
          // Spacer(),
          // DropdownButton<String>(
          //   value: drop,
          //   icon: const Icon(Icons.arrow_drop_down),
          //   elevation: 0,
          //   style: const TextStyle(color: Colors.black),
          //   underline: Container(
          //     height: 1,
          //     color: Colors.black,
          //   ),
          //   onChanged: (String? value) {
          //     // This is called when the user selects an item.
          //     setState(() {
          //       drop = value!;
          //     });
          //   },
          //   items: displayList.map<DropdownMenuItem<String>>((String value) {
          //     return DropdownMenuItem<String>(
          //       value: value,
          //       child: Text(value),
          //     );
          //   }).toList(),
          // ),
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
                            builder: (builder) => EmployeeList()));
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
                            builder: (builder) => EmployeeList()));
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
