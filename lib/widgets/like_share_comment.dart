import 'package:flutter/material.dart';

class LikeShareComment extends StatelessWidget {
  const LikeShareComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              ),
              Center(
                child: Text(
                  "3K",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.comment,
                color: Colors.white,
                size: 40,
              ),
              Center(
                child: Text(
                  "3K",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
                size: 40,
              ),
              Center(
                child: Text(
                  "3K",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
