// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:travel_application/widgets/bookmarked.dart';
import 'package:travel_application/widgets/history.dart';
import 'package:travel_application/widgets/on_going.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "On Going",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          OnGoing(),
          SizedBox(
            height: 10,
          ),
          Text(
            "History",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          History(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Book Marked",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BookMarked(),
        ],
      ),
    );
  }
}
