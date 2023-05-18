import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class AddTaxes extends StatefulWidget {
  const AddTaxes({super.key});

  @override
  State<AddTaxes> createState() => _AddTaxesState();
}

class _AddTaxesState extends State<AddTaxes> {
  List<String> displayList = <String>[
    'Included in the price',
    "Added to the price",
  ];
  String drop = "Included in the price";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [TextButton(onPressed: () {}, child: Text("SAVE"))],
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Create Taxes",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    hintText: "Name",
                    fillColor: Color(0xffF5F6FA),
                    filled: true),
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
                    hintText: "Tax rate%",
                    fillColor: Color(0xffF5F6FA),
                    filled: true),
              )),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Type",
                style: TextStyle(fontSize: 17),
              )),
          Container(
            margin: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: DropdownButton<String>(
              isDense: true,
              isExpanded: true,
              value: drop,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 0,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 1,
                color: Colors.black,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  drop = value!;
                });
              },
              items: displayList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Divider(),
          Center(
              child:
                  TextButton(onPressed: () {}, child: Text("Apply To ITEMS")))
        ],
      ),
    );
  }
}
