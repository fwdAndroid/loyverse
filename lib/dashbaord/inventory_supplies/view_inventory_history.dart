import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class ViewInventoryHistory extends StatefulWidget {
  const ViewInventoryHistory({super.key});

  @override
  State<ViewInventoryHistory> createState() => _ViewInventoryHistoryState();
}

class _ViewInventoryHistoryState extends State<ViewInventoryHistory> {
  DateTime? startDate;
  DateTime? endDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "View Inventory History",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  "Date",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23 Dec 2023",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Item Name",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Store ",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "12",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Employee Name",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23112",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Reason",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23112",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Stock Adjustment",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23112",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Stock After ",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23112",
                  style: TextStyle(fontSize: 17),
                )),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
