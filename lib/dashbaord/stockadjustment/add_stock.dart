import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/dashbaord/purchase_order/purchase_order.dart';
import 'package:loyverse/dashbaord/stockadjustment/stockadjustment_main_screen.dart';
import 'package:loyverse/dashbaord/transfer_orders/transfer_order_main_screen.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class AddStockAdjustment extends StatefulWidget {
  const AddStockAdjustment({super.key});

  @override
  State<AddStockAdjustment> createState() => _AddStockAdjustmentState();
}

class _AddStockAdjustmentState extends State<AddStockAdjustment> {
  List<String> emp = <String>[
    'Receive Items',
    'Inventory Count',
    'Loss',
    'Damage'
  ];
  String e = "Receive Items";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Add Stock Adjustment",
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
                  "Reason",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: DropdownButton<String>(
                value: e,
                icon: const Icon(
                  Icons.arrow_drop_down,
                ),
                elevation: 0,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 0,
                  color: Colors.black,
                ),
                isExpanded: true,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    e = value!;
                  });
                },
                items: emp.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                  );
                }).toList(),
              ),
            ),
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
                      hintText: "Fawad",
                      fillColor: Color(0xffF5F6FA),
                      filled: true),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Items",
                  style: TextStyle(fontSize: 17),
                )),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  "Stock",
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
                  "Add Stock",
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
                  "Remaining Stock",
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
                  "Search",
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
                              builder: (builder) =>
                                  StockAdjustmentMainScreen()));
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
                              builder: (builder) =>
                                  StockAdjustmentMainScreen()));
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
