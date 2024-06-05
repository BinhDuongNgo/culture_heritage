// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_application/modals/recommended_places_modal.dart';
import 'package:travel_application/widgets/like_share_comment.dart';
import 'package:travel_application/widgets/text_recomment_travel.dart';

class RecommendTravelCard1 extends StatelessWidget {
  final RecommendedPlacesModals placeModal;
 
  const RecommendTravelCard1({super.key, required this.placeModal});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              placeModal.image,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                        ),
                      ),
                      TextRecommendedTravel(placeModal: placeModal),
                    ],
                  ),
                ),
              ),
              Container(
                width: 70,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                      ),
                    ),
                    LikeShareComment(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
