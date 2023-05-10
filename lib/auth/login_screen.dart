import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loyverse/auth/register_screen.dart';
import 'package:loyverse/dashbaord/main_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => MainDasboard()));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Color(0xff394867),
                  fixedSize: Size(220, 56)),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => RegisterScreen()));
                  },
                  child: Text("Register")))
        ],
      ),
    );
  }
}
