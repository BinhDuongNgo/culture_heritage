import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class BookingNowButton extends StatelessWidget {
  const BookingNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.topSlide,
          title: "Success",
          desc: "Tour booking completed",
          btnOkOnPress: () {
            Navigator.pop(context);
          },
        ).show();
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.orange.shade300,
          borderRadius: BorderRadius.circular(25),
        ),
        child: InkWell(
          onTap: () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.topSlide,
              title: "Success",
              desc: "Tour booking completed",
              btnOkOnPress: () {
                Navigator.pop(context);
              },
            ).show();
          },
          child: Center(
            child: Text(
              "Booking now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
