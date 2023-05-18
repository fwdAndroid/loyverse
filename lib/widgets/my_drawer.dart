import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/dashbaord/employee/employee_list.dart';
import 'package:loyverse/dashbaord/inventory_supplies/inventory_history.dart';
import 'package:loyverse/dashbaord/inventory_supplies/supply_main_screen.dart';
import 'package:loyverse/dashbaord/itemslist/categorylist.dart';
import 'package:loyverse/dashbaord/itemslist/discountlist.dart';
import 'package:loyverse/dashbaord/itemslist/itemslist.dart';
import 'package:loyverse/dashbaord/itemslist/modifierslist.dart';
import 'package:loyverse/dashbaord/productions/production_main_screen.dart';
import 'package:loyverse/dashbaord/purchase_order/purchase_order.dart';
import 'package:loyverse/dashbaord/sales/sales_by_category.dart';
import 'package:loyverse/dashbaord/sales/sales_by_discount.dart';
import 'package:loyverse/dashbaord/sales/sales_by_employee.dart';
import 'package:loyverse/dashbaord/sales/sales_by_items.dart';
import 'package:loyverse/dashbaord/sales/sales_by_modifier.dart';
import 'package:loyverse/dashbaord/sales/sales_by_payment.dart';
import 'package:loyverse/dashbaord/sales/sales_by_reciptes.dart';
import 'package:loyverse/dashbaord/sales/sales_by_taxes.dart';
import 'package:loyverse/dashbaord/sales/sales_summary.dart';
import 'package:loyverse/dashbaord/sales/shifts.dart';
import 'package:loyverse/dashbaord/transfer_orders/transfer_order_main_screen.dart';
import 'package:loyverse/shift/shift.dart';

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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesSummaryDetial()));
                },
                title: Text("Sales Summary"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SalesByItems()));
                },
                title: Text("Sales by Item"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesByCategory()));
                },
                title: Text("Sales by category"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesByEmployee()));
                },
                title: Text("Sales by employee"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesByPayment()));
                },
                title: Text("Sales by payment type"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesSummaryRecipts()));
                },
                title: Text("Recipts"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesByModifiers()));
                },
                title: Text("Sales by Modifier"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => SalesByDiscounts()));
                },
                title: Text("Discounts"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => SalesByTax()));
                },
                title: Text("Taxes"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Shifts()));
                },
                title: Text("Shifts"),
              ),
            ],
          ),
          //Items
          ExpansionTile(
            leading: Icon(Icons.integration_instructions),
            title: Text("Items"),
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ItemList()));
                },
                title: Text("Item List"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CategoryList()));
                },
                title: Text("Categories"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ModifierList()));
                },
                title: Text("Modifiers"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => DiscountList()));
                },
                title: Text("Discounts"),
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
              // ListTile(
              //   title: Text("Discounts"),
              // ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.people),
            title: Text("Employees"),
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => EmployeeList()));
                },
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
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => Shift()));
            },
            leading: Icon(Icons.person_4),
            title: Text("Shift"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      )),
    );
  }
}
