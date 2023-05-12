import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/dashbaord/inventory_supplies/inventory_history.dart';
import 'package:loyverse/dashbaord/inventory_supplies/supply_main_screen.dart';
import 'package:loyverse/dashbaord/productions/production_main_screen.dart';
import 'package:loyverse/dashbaord/purchase_order/purchase_order.dart';
import 'package:loyverse/dashbaord/transfer_orders/transfer_order_main_screen.dart';

import '../dashbaord/inventorycounts/inventory_count_main_screen.dart';
import '../dashbaord/stockadjustment/stockadjustment_main_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: Text("Owner Account"),
            subtitle: Text("fwdkaleem@gmail.com"),
          ),
          Divider(),
          ExpansionTile(
            leading: Icon(Icons.report),
            title: Text("Reports"),
            children: [
              ListTile(
                title: Text("Sales Summary"),
              ),
              ListTile(
                title: Text("Sales by Item"),
              ),
              ListTile(
                title: Text("Sales by category"),
              ),
              ListTile(
                title: Text("Sales by employee"),
              ),
              ListTile(
                title: Text("Sales by payment type"),
              ),
              ListTile(
                title: Text("Recipts"),
              ),
              ListTile(
                title: Text("Sales by modifier"),
              ),
              ListTile(
                title: Text("Discounts"),
              ),
              ListTile(
                title: Text("Taxes"),
              ),
              ListTile(
                title: Text("Shifts"),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.inventory),
            title: Text("Inventory Management"),
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => PurchaseOrderMainScreen()));
                },
                title: Text("Purchase Orders"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => TransferOrderMainScreen()));
                },
                title: Text("Transfer Orders"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => StockAdjustmentMainScreen()));
                },
                title: Text("Stock Adjustments"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => InventoryCountMainScreen()));
                },
                title: Text("Inventory Counts"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ProductionMainScreen()));
                },
                title: Text("Productions"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => MainSupplyScreen()));
                },
                title: Text("Suppliers"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => InventoryHistory()));
                },
                title: Text("Inventory History"),
              ),
              ListTile(
                title: Text("Inventory Valuation"),
              ),
              ListTile(
                title: Text("Discounts"),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.people),
            title: Text("Employees"),
            children: [
              ListTile(
                title: Text("Employee list"),
              ),
              ListTile(
                title: Text("Access Rights"),
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => CustomerMainScreen()));
            },
            leading: Icon(Icons.person_4),
            title: Text("Customers"),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      )),
    );
  }
}
