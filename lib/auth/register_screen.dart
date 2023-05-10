import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/auth/login_screen.dart';
import 'package:loyverse/auth/register_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              "assets/scan.png",
              height: 200,
              width: 300,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20), child: Text("Email")),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(hintText: 'fwdkaleem@gmail.com'),
              )),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text("Password")),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(hintText: "842341952%956@"),
              )),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text("Confrim Password")),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(hintText: "842341952%956@"),
              )),
          Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              child: Text("Country")),
          Container(
              margin: EdgeInsets.only(top: 5, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(hintText: "Pakistan"),
              )),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Register"),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xff394867),
                  fixedSize: Size(220, 56)),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => LoginScreen()));
                  },
                  child: Text("Already Have an Account")))
        ],
      ),
    );
  }
}
