// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_application/modals/recommended_places_modal.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_1.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_2.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_3.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_4.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_5.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.7,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: screenWidth * 0.75,
            height: screenHeight * 0.5,
            child: Card(
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecommendTravelCard1()));
                  }
                  if (index == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecommendTravelCard2()));
                  }
                  if (index == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecommendTravelCard3()));
                  }
                  if (index == 3) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecommendTravelCard4()));
                  }
                  if (index == 4) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecommendTravelCard5()));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                          height: screenHeight * 0.4,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.01,
                      ),
                      Container(
                        height: screenHeight * 0.04,
                        child: Row(
                          children: [
                            Text(
                              recommendedPlaces[index].place,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.15,
                        child: Text(
                          recommendedPlaces[index].infomation,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.005,
                      ),
                      Container(
                        height: screenHeight*0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Xem thêm"),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 10),
          );
        },
        itemCount: recommendedPlaces.length,
      ),
    );
  }
}
