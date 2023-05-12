import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/add_customer.dart';
import 'package:loyverse/dashbaord/customer/customer_view.dart';
import 'package:loyverse/dashbaord/purchase_order/add_purchase_order.dart';
import 'package:loyverse/dashbaord/purchase_order/view_purchase_order.dart';
import 'package:loyverse/dashbaord/transfer_orders/add_transfer_order.dart';
import 'package:loyverse/dashbaord/transfer_orders/view_transfer_order.dart';

class TransferOrderMainScreen extends StatefulWidget {
  const TransferOrderMainScreen({super.key});

  @override
  State<TransferOrderMainScreen> createState() =>
      _TransferOrderMainScreenState();
}

class _TransferOrderMainScreenState extends State<TransferOrderMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => AddTransferOrder()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/back.png"),
        ),
        title: Text(
          "Transfer Order",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
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
                      "Store Name",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "AXN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Date of Transfer Order",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "23 Dec 2029",
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
                              builder: (builder) => ViewTransferOrder()));
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
