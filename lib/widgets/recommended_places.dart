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
    return SizedBox(
      height: 500,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 350,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  if(index == 0){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard1()));
                  }
                  if(index == 1){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard2()));
                  }
                  if(index == 2){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard3()));
                  }
                  if(index == 3){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard4()));
                  }
                  if(index == 4){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard5()));
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
                          height: 320,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                recommendedPlaces[index].place,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        recommendedPlaces[index].infomation,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Center(
                            child: Text("Xem thêm"),
                          ),
                          Icon(Icons.chevron_right),
                        ],
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
