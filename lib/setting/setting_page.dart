import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/setting/general.dart';
import 'package:loyverse/setting/printers.dart';
import 'package:loyverse/setting/taxes.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Setting",
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
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Printers()));
            },
            leading: Icon(Icons.print),
            title: Text("Printers"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Taxes()));
            },
            leading: Icon(Icons.text_rotation_angleup),
            title: Text("Taxes"),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => General()));
            },
            leading: Icon(Icons.generating_tokens_outlined),
            title: Text("General"),
          ),
        ],
      ),
    );
  }
}
