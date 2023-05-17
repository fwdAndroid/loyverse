import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/dashbaord/inventorycounts/inventory_count_main_screen.dart';
import 'package:loyverse/dashbaord/purchase_order/purchase_order.dart';
import 'package:loyverse/dashbaord/transfer_orders/transfer_order_main_screen.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class AddInventoryCount extends StatefulWidget {
  const AddInventoryCount({super.key});

  @override
  State<AddInventoryCount> createState() => _AddInventoryCountState();
}

class _AddInventoryCountState extends State<AddInventoryCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Add Inventory Count",
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
                  "Type",
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
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add Category",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add Supplier",
                        style: TextStyle(fontSize: 17),
                      ),
                    )
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Add Items",
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
                      hintText: "23 Dec 2023",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Expected Stock",
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
                      hintText: "1Cha2",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => InventoryCountMainScreen()));
                },
                child: Text("Save"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff394867),
                    fixedSize: Size(220, 56)),
              ),
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
