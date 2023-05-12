import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ViewSupplier extends StatefulWidget {
  const ViewSupplier({super.key});

  @override
  State<ViewSupplier> createState() => _ViewSupplierState();
}

class _ViewSupplierState extends State<ViewSupplier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/back.png"),
        ),
        title: Text(
          "View Supplier",
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
                  "Supplier Name",
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
                  "Supplier Contact",
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
                  "Email  Address",
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
                  "Phone Number",
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
                  "Address",
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
                  "Country",
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
                  "State/Province",
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
                  "City",
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
