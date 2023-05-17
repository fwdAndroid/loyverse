import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/widgets/bar_chart.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class SalesByPayment extends StatefulWidget {
  const SalesByPayment({super.key});

  @override
  State<SalesByPayment> createState() => _SalesByPaymentState();
}

class _SalesByPaymentState extends State<SalesByPayment> {
  List<String> barlist = <String>['Area', 'Bar'];
  List<String> hrsList = <String>[
    'Hours',
    'Days',
    'Weeks',
    "Months",
    "Quaters",
    "Years"
  ];
  List<String> allday = <String>[
    'All Day',
    'Custom Period',
  ];
  List<String> emp = <String>[
    'All Employees',
  ];
  DateTime? startDate;
  DateTime? endDate;
  final List<double> data = [
    15,
    14,
  ];
  String all = "All Day";
  String e = "All Employees";
  List<String> exportList = <String>[
    'Gross Sales',
    'Refunds',
    'Discounts',
    "Net Sales",
    "Cost of goods",
    "Margin",
    "Taxes",
  ];

  List<String> displayList = <String>[
    'Category',
    "Items Sold",
    "Gross Sales",
    "Items Refunded",
    "Refunds",
    "Discounts",
    "Net Sales",
    "Cost of goods",
    "Gross Profits",
    "Margin",
    "Taxes"
  ];

  String dropdownValue = "Area";
  String dropdown = "Hours";
  String drop = "Gross Sales";
  String items = "Category";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Sales By Payment Type",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                showCustomDateRangePicker(
                  context,
                  dismissible: true,
                  minimumDate:
                      DateTime.now().subtract(const Duration(days: 30)),
                  maximumDate: DateTime.now().add(const Duration(days: 30)),
                  endDate: endDate,
                  startDate: startDate,
                  backgroundColor: Colors.white,
                  primaryColor: Colors.green,
                  onApplyClick: (start, end) {
                    setState(() {
                      endDate = end;
                      startDate = start;
                    });
                  },
                  onCancelClick: () {
                    setState(() {
                      endDate = null;
                      startDate = null;
                    });
                  },
                );
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(12)),
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                      "9 April 2023 - 9 May 2032",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(14)),
                width: 300,
                height: 50,
                child: Center(
                  child: DropdownButton<String>(
                    value: all,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    elevation: 0,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 0,
                      color: Colors.black,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        all = value!;
                      });
                    },
                    items: allday.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(14)),
                width: 300,
                height: 50,
                child: Center(
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
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        e = value!;
                      });
                    },
                    items: emp.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Row(
                children: [
                  Text(
                    "Exports",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Payment Type",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          "Payment Transactions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          "Payment Amount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          "Refund Transactions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          "Refund Amount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Text(
                          "Net Amount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Container(
                margin: EdgeInsets.only(top: 140, left: 50),
                width: 300,
                height: 120,
                child: MyBarChart(data: data),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // List<BarChartGroupData> _chartGroups() {}

  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Jan';
              break;
            case 2:
              text = 'Mar';
              break;
            case 4:
              text = 'May';
              break;
            case 6:
              text = 'Jul';
              break;
            case 8:
              text = 'Sep';
              break;
            case 10:
              text = 'Nov';
              break;
          }

          return Text(text);
        },
      );
}
