import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ViewProductions extends StatefulWidget {
  const ViewProductions({super.key});

  @override
  State<ViewProductions> createState() => _ViewProductionsState();
}

class _ViewProductionsState extends State<ViewProductions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/back.png"),
        ),
        title: Text(
          "View Productions",
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
                  "Notes",
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
                  "Cost",
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
                  "Quantity",
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
                  "Product Name",
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
