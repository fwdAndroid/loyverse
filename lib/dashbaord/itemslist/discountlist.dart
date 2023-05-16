import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:loyverse/dashbaord/itemslist/add_category.dart';
import 'package:loyverse/dashbaord/itemslist/add_discounts.dart';
import 'package:loyverse/dashbaord/itemslist/add_item.dart';
import 'package:loyverse/dashbaord/itemslist/add_modifier.dart';
import 'package:loyverse/widgets/my_drawer.dart';

class DiscountList extends StatefulWidget {
  const DiscountList({super.key});

  @override
  State<DiscountList> createState() => _DiscountListState();
}

class _DiscountListState extends State<DiscountList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Discounts",
          style: TextStyle(
              color: Color(0xff214325),
              fontSize: 20,
              fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff394867),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddDiscounts()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Text("Discounts")),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff9BA4B5),
                        borderRadius: BorderRadius.circular(12)),
                    child: CheckboxListTile(
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Value',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            '12%',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            'asdasd',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                      value: timeDilation != 1.0,
                      onChanged: (bool? value) {
                        setState(() {
                          timeDilation = value! ? 10.0 : 1.0;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      secondary: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Restricted Access',
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: const Text(
                              'NO',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
