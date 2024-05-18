// ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_application/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 250,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 370, top: 5, bottom: 5),
            child: Text(
              "Email",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: "example@gmail.com",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 340, top: 5, bottom: 5),
            child: Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: "password",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.orange.shade300,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text("Or"),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.g_mobiledata,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Center(
              child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              "Explore the app as a guest",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
