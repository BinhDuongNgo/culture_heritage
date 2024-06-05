
import 'package:flutter/material.dart';
import 'package:travel_application/buttons/booking_now_button.dart';
import 'package:travel_application/modals/recommended_places_modal.dart';

class TextRecommendedTravel extends StatelessWidget {
  final RecommendedPlacesModals placeModal;
  const TextRecommendedTravel({super.key, required this.placeModal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              placeModal.place,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              placeModal.infomation,
              maxLines: 5,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          BookingNowButton(),
        ],
      ),
    );
  }
}
