import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/itemslist/add_category.dart';
import 'package:loyverse/dashbaord/itemslist/add_item.dart';
import 'package:loyverse/dashbaord/itemslist/add_modifier.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class ModifierList extends StatefulWidget {
  const ModifierList({super.key});

  @override
  State<ModifierList> createState() => _ModifierListState();
}

class _ModifierListState extends State<ModifierList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Modifiers",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddModifier()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Text("Modifiers")),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff9BA4B5),
                        borderRadius: BorderRadius.circular(12)),
                    child: CheckboxListTile(
                      subtitle: Text(
                        "asd",
                        style: TextStyle(color: Colors.white),
                      ),
                      title: const Text(
                        'SSS',
                        style: TextStyle(color: Colors.white),
                      ),
                      value: timeDilation != 1.0,
                      onChanged: (bool? value) {
                        setState(() {
                          timeDilation = value! ? 10.0 : 1.0;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      secondary: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
