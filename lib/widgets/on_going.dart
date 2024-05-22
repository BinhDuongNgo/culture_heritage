// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_application/pages/booking_card/booking_card_1.dart';
import 'package:travel_application/widgets/step_delivery.dart';

class OnGoing extends StatelessWidget {
  const OnGoing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight*1,
      child: Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCard1()));
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/vanmieu.jpg',
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                    height: screenHeight*0.25,
                  ),
                ),
                SizedBox(
                  height: screenHeight*0.01,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: screenHeight*0.05,
                          child: Center(
                            child: Text(
                              "Schedule",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                StepDelivery(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingCard1()));
                      },
                      child: Text(
                        "Booking",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
