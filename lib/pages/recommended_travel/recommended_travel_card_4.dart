// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class RecommendTravelCard4 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _RecommendTravelCard4 createState() => _RecommendTravelCard4();
}

class _RecommendTravelCard4 extends State<RecommendTravelCard4> {
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
      // ignore: prefer_const_constructors
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/thaprua.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Row(
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
                    Container(
                      height: 280,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Tháp Rùa Hồ Gươm",
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
                              "Nằm trên một gò đảo nhỏ rộng khoảng 350 mét vuông, nhô lên giữa lòng Hồ Hoàn Kiếm, Hà Nội. Du khách có thể chiêm ngưỡng Tháp Rùa ở bất cứ đâu hai bên bờ hồ bao quanh bởi phố Đinh Tiên Hoàng và phố Lê Thái Tổ, quận Hoàn Kiếm.",
                              maxLines: 5,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade300,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: () {},
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 70,
              // ignore: prefer_const_constructors
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                    ),
                  ),
                  Container(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                        Column(
                          children: [
                            Icon(
                              Icons.favorite,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
