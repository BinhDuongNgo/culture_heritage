// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_application/modals/featured_listed_modal.dart';
import 'package:travel_application/pages/booking_card/booking_card_1.dart';
import 'package:travel_application/pages/booking_card/booking_card_2.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: List.generate(featuredListed.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: screenHeight * 0.2,
            width: screenWidth * 0.95,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingCard1()));
                  }
                  if (index == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingCard2()));
                  }
                },
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          featuredListed[index].image,
                          height: double.maxFinite,
                          width: screenWidth * 0.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      SizedBox(
                        width: screenWidth * 0.5,
                        height: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              featuredListed[index].place,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              featuredListed[index].infomation,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            //comment
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: screenHeight*0.01,),
                                SizedBox(
                                  width: screenWidth*0.5,
                                  height: screenHeight*0.05,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 5, right: 5,),
                                    decoration: BoxDecoration(
                                      color: Colors.green.shade100,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Rebooking",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      SizedBox(
                        width: screenWidth * 0.1,
                        child: Container(
                          padding: EdgeInsets.only(bottom: 1000),
                          child: Icon(Icons.bookmark_outline),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
