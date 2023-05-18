import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/setting/add_printers.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class Printers extends StatefulWidget {
  const Printers({super.key});

  @override
  State<Printers> createState() => _PrintersState();
}

class _PrintersState extends State<Printers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddPrinters()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Printers",
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/print.png",
              height: 200,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You have no printers yet",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text("To add the printer, press the Add button")
        ],
      ),
    );
  }
}
