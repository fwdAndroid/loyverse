import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/add_customer.dart';
import 'package:loyverse/dashbaord/customer/customer_view.dart';
import 'package:loyverse/dashbaord/purchase_order/add_purchase_order.dart';
import 'package:loyverse/dashbaord/purchase_order/view_purchase_order.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class PurchaseOrderMainScreen extends StatefulWidget {
  const PurchaseOrderMainScreen({super.key});

  @override
  State<PurchaseOrderMainScreen> createState() =>
      _PurchaseOrderMainScreenState();
}

class _PurchaseOrderMainScreenState extends State<PurchaseOrderMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => AddPurchaseOrder()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Purchase Order",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: 126,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff9BA4B5),
                  borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                title: Column(
                  children: [
                    Text(
                      "Customer Name",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Fawad Kaleemm",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Chair",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                trailing: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => PurchaseOrderView()));
                    },
                    child: Text(
                      "View",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          );
        },
      ),
    );
  }
}
