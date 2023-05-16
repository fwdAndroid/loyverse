import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/add_customer_list.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class MainDasboard extends StatefulWidget {
  const MainDasboard({super.key});

  @override
  State<MainDasboard> createState() => _MainDasboardState();
}

class _MainDasboardState extends State<MainDasboard> {
  String drop = "All Items";
  List<String> exportList = <String>[
    'All Items',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => AddCustomersList()));
            },
            icon: Icon(Icons.person_add),
          ),
          PopupMenuButton(
              // Callback that sets the selected popup menu item.
              // onSelected: (SampleItem item) {
              //   setState(() {
              //     selectedMenu = item;
              //   });
              // },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      child: Text('Clear Delete'),
                    ),
                    const PopupMenuItem(
                      child: Text('Edit Ticket'),
                    ),
                    const PopupMenuItem(
                      child: Text('Assign Ticket'),
                    ),
                    const PopupMenuItem(
                      child: Text('Merge Ticket'),
                    ),
                    const PopupMenuItem(
                      child: Text('Split Ticket'),
                    ),
                    const PopupMenuItem(
                      child: Text('Sync'),
                    ),
                  ])
        ],
        title: Text(
          "Ticket",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 100,
              width: 300,
              decoration: BoxDecoration(color: Color(0xff394867)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Open Tickets",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Charge",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "0.09",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: DropdownButton<String>(
                    value: drop,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    elevation: 0,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        drop = value!;
                      });
                    },
                    items: exportList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Expanded(child: Icon(Icons.search))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 6, child: Text("Data 1")),
                Expanded(child: Text("23.3"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
