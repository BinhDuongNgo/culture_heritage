// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:travel_application/modals/settings_modal.dart';
import 'package:travel_application/pages/login_page.dart';
// ignore: depend_on_referenced_packages

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPage createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                settings.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if(index == 3){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Icon(
                              settings[index].icon,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        settings[index].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
