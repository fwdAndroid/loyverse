import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/dashbaord/productions/production_main_screen.dart';
import 'package:loyverse/dashbaord/purchase_order/purchase_order.dart';
import 'package:loyverse/dashbaord/transfer_orders/transfer_order_main_screen.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class AddProductions extends StatefulWidget {
  const AddProductions({super.key});

  @override
  State<AddProductions> createState() => _AddProductionsState();
}

class _AddProductionsState extends State<AddProductions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Create Productions",
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
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Notes",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),

                        borderSide: BorderSide(
                            width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                      ),
                      border: InputBorder.none,
                      hintText: "Fawad Kaleem",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Search ",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),

                        borderSide: BorderSide(
                            width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                      ),
                      border: InputBorder.none,
                      hintText: "Fawad",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Item Name",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),

                        borderSide: BorderSide(
                            width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                      ),
                      border: InputBorder.none,
                      hintText: "Fawad",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Cost",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),

                        borderSide: BorderSide(
                            width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                      ),
                      border: InputBorder.none,
                      hintText: "23",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Quantity",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),

                        borderSide: BorderSide(
                            width: 1, color: Color(0xffF5F6FA)), //<-- SEE HERE
                      ),
                      border: InputBorder.none,
                      hintText: "12",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ProductionMainScreen()));
                    },
                    child: Text("Save"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ProductionMainScreen()));
                    },
                    child: Text("Cancel"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
