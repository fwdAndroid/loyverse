import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/add_customer.dart';

class AddCustomersList extends StatefulWidget {
  const AddCustomersList({super.key});

  @override
  State<AddCustomersList> createState() => _AddCustomersListState();
}

class _AddCustomersListState extends State<AddCustomersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.cancel)),
        title: Text(
          "Add Customer to List",
          style: TextStyle(
              color: Color(0xff212325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: CupertinoSearchTextField(
              // controller: controller,
              onChanged: (value) {},
              onSubmitted: (value) {},
              autocorrect: true,
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => AddCustomer()));
                },
                child: Text("Add New Customer")),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Recent Customers",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Text(
                        "Fawad Kaleem",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      subtitle: Text(
                        "fwdkaleem@gmail.com",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
