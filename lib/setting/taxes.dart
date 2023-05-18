import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/setting/add_tax.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class Taxes extends StatefulWidget {
  const Taxes({super.key});

  @override
  State<Taxes> createState() => _TaxesState();
}

class _TaxesState extends State<Taxes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddTaxes()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Taxes",
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.text_rotation_angledown_outlined),
            title: Text("td"),
            subtitle: Text("I tem"),
            trailing: Text("100%"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.text_rotation_angledown_outlined),
            title: Text("td"),
            subtitle: Text("I tem"),
            trailing: Text("100%"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.text_rotation_angledown_outlined),
            title: Text("td"),
            subtitle: Text("I tem"),
            trailing: Text("100%"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.text_rotation_angledown_outlined),
            title: Text("td"),
            subtitle: Text("I tem"),
            trailing: Text("100%"),
          ),
        ],
      ),
    );
  }
}
