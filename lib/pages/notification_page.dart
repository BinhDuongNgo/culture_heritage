// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPage createState() => _NotificationPage();
}

class _NotificationPage extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}
