import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class CustomerView extends StatefulWidget {
  const CustomerView({super.key});

  @override
  State<CustomerView> createState() => _CustomerViewState();
}

class _CustomerViewState extends State<CustomerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "View Customer",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/scan.png",
              height: 200,
              width: 200,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Customer Name",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Fawad Kaleem",
                style: TextStyle(fontSize: 17),
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Customer Email",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "fwdKaleem@gmail.com",
                style: TextStyle(fontSize: 17),
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Customer Phone Number",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "+92307068473",
                style: TextStyle(fontSize: 17),
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Customer Address",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Eden",
                style: TextStyle(fontSize: 17),
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Customer Country",
                style: TextStyle(fontSize: 17),
              )),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Pakistan",
                style: TextStyle(fontSize: 17),
              )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Edit"),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Delete",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
