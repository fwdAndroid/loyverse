import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/itemslist/itemslist.dart';
import 'package:loyverse/widgets/my_drawer.dart';

enum SingingCharacter { sold, volume }

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
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
          "Create Item",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
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
                  "Category",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: DropdownButton<String>(
                isExpanded: true,
                value: drop,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 0,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 1,
                  color: Colors.grey,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    drop = value!;
                  });
                },
                items:
                    displayList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Description",
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
                      hintText: "Abcsadasd",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
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
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Sold By",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text(
                          'Each',
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
                          'Weight/Volume',
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
                  "Price",
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
                      hintText: "0",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Cost",
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
                      hintText: "RS0",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "SKU",
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
                      hintText: "12345",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "BarCode",
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
                  "Inventory",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: SwitchListTile(
                title: const Text('Composite Item'),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: SwitchListTile(
                title: const Text('Truck Stock'),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Variants",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 15),
                child: Text(
                  "Use variants if an item has different sizes,colors or other options",
                  style: TextStyle(fontSize: 15),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Modifiers",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: SwitchListTile(
                title: const Text('SSS'),
                value: _lights,
                onChanged: (bool value) {
                  setState(() {
                    _lights = value;
                  });
                },
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Representation On POS",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: const Text(
                          'Color and Shape',
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
                          'Image',
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
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => ItemList()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => ItemList()));
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
      ),
    );
  }
}
