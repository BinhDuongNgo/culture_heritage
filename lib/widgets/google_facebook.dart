import 'package:flutter/material.dart';

class GoogleFacebook extends StatelessWidget {
  const GoogleFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.g_mobiledata,
                color: Colors.orange,
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Center(
                child: Text(
                  "Google",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Center(
                child: Text(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
