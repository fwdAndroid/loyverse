import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/add_customer_list.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class Shift extends StatefulWidget {
  const Shift({super.key});

  @override
  State<Shift> createState() => _ShiftState();
}

class _ShiftState extends State<Shift> {
  String drop = "All Items";
  List<String> exportList = <String>[
    'All Items',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (builder) => AddCustomersList()));
            },
            icon: Icon(Icons.refresh),
          ),
        ],
        title: Text(
          "Shift",
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
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
              onPressed: () {
                debugPrint('Received click');
              },
              child: const Text('Cash Management'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
              onPressed: () {
                debugPrint('Received click');
              },
              child: const Text('Close Shift'),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text(
                "Shift Number:1",
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.left,
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shift Opened: Owner",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "06/05/2023 12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text(
                "Cash Drawer",
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.left,
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Starting Cash",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cash Payments",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cash Refunds",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paid in",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paid out",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Expected cash amount",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Text(
                "Sales Summary",
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.left,
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gross Sales",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Refunds",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discounts",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
          Divider(),
          Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Sales",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "12:31",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
