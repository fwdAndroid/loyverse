import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PurchaseOrderView extends StatefulWidget {
  const PurchaseOrderView({super.key});

  @override
  State<PurchaseOrderView> createState() => _PurchaseOrderViewState();
}

class _PurchaseOrderViewState extends State<PurchaseOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/back.png"),
        ),
        title: Text(
          "View Purchase Order",
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
                  "Order Date",
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
                  "Expected Arrival Date",
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
                  "Product Name",
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
                  "Product Cost",
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
                  "Additional Product Cost",
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
                  "23",
                  style: TextStyle(fontSize: 17),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Note",
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
