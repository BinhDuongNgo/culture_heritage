// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:travel_application/modals/delivery_modal.dart';
import 'package:travel_application/modals/recommended_places_modal.dart';
import 'package:travel_application/pages/recommended_travel/recommended_travel_card_1.dart';
// ignore: depend_on_referenced_packages

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  List<Delivery> delivery = allDelivery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(width: 0.8),
                ),
                hintText: 'Searching...',
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {

                  },
                ),
              ),
              onChanged: searchDelivery,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: delivery.length,
              itemBuilder: (context, index) {
                final value = delivery[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        value.image,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(value.place),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendTravelCard1(placeModal: recommendedPlaces[index])));
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void searchDelivery(String query) {
    final suggestions = allDelivery.where((value) {
      final valueTitle = value.place.toLowerCase();
      final input = query.toLowerCase();

      return valueTitle.contains(input);
    }).toList();

    setState(() {
      delivery = suggestions;
    });
  }
}
