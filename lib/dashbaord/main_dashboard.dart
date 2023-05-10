import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/dashbaord/customer/cusotmer_main_screen.dart';

class MainDasboard extends StatefulWidget {
  const MainDasboard({super.key});

  @override
  State<MainDasboard> createState() => _MainDasboardState();
}

class _MainDasboardState extends State<MainDasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/notifications.png"),
          )
        ],
        automaticallyImplyLeading: false,
        title: Text(
          "Point of Sale",
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => CustomerMainScreen()));
                },
                child: Container(
                  width: 170,
                  height: 178,
                  decoration: BoxDecoration(
                      color: Color(0xffE7E8EA),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard_customize,
                        size: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Customer Managment",
                        style: TextStyle(color: Color(0xff394867)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 170,
                height: 178,
                decoration: BoxDecoration(
                    color: Color(0xffE7E8EA),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.inventory,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Inventory Managment",
                      style: TextStyle(color: Color(0xff394867)),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 170,
                height: 178,
                decoration: BoxDecoration(
                    color: Color(0xffE7E8EA),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.scale_sharp,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sales Records",
                      style: TextStyle(color: Color(0xff394867)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 170,
                height: 178,
                decoration: BoxDecoration(
                    color: Color(0xffE7E8EA),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.online_prediction_rounded,
                      size: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Order Managment",
                      style: TextStyle(color: Color(0xff394867)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
