import 'package:flutter/material.dart';
import 'package:travel_application/modals/booking_card_modal.dart';

class LikeStar extends StatelessWidget {
  final BookingCardModal bookingCardModal;
  const LikeStar({super.key, required this.bookingCardModal});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenWidth * 0.65,
            child: Text(
              bookingCardModal.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            width: screenWidth * 0.08,
            height: screenHeight * 0.08,
            child: Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                Text(
                  "3K",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.08,
            height: screenHeight * 0.08,
            child: Column(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
