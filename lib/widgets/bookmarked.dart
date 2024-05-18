// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_application/modals/featured_listed_modal.dart';
import 'package:travel_application/pages/booking_card/booking_card_1.dart';
import 'package:travel_application/pages/booking_card/booking_card_2.dart';

class BookMarked extends StatelessWidget {
  const BookMarked({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(featuredListed.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 160,
            width: double.maxFinite,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  if(index == 0){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCard1()));
                  }
                  if(index == 1){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCard2()));
                  }
                },
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          featuredListed[index].image,
                          height: double.maxFinite,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 275,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              featuredListed[index].place,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              featuredListed[index].infomation,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 30,
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
