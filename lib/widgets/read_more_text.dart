import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_application/modals/booking_card_modal.dart';

class ReadMoretext extends StatelessWidget {
  final BookingCardModal bookingCardModal;
  const ReadMoretext({super.key, required this.bookingCardModal});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      bookingCardModal.information,
      trimLines: 10,
      textAlign: TextAlign.justify,
      trimMode: TrimMode.Line,
      trimCollapsedText: " Xem thêm ",
      trimExpandedText: " Ẩn bớt ",
      lessStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      moreStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}
