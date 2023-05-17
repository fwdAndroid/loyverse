import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class ViewStock extends StatefulWidget {
  const ViewStock({super.key});

  @override
  State<ViewStock> createState() => _ViewStockState();
}

class _ViewStockState extends State<ViewStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "View Stock",
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
                  "Adjustment ID",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "#1243235",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Date of Adjustment",
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
                  "Reason",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "Chair",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Adjustment Quantity",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "23",
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
      ),
    );
  }
}
