// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, unused_local_variable
import 'package:flutter/material.dart';
import 'package:travel_application/widgets/featured_listed.dart';
import 'package:travel_application/widgets/recommended_places.dart';
// ignore: depend_on_referenced_packages

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendation",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight*0.01,
          ),
          RecommendedPlaces(),
          SizedBox(
            height: screenHeight*0.01,
          ),
          Text(
            "Featured Listed",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: screenHeight*0.01,
          ),
          FeaturedListed(),
        ],
      ),
    );
  }
}
