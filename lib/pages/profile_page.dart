// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/pages/edit_profile_page.dart';
import 'package:travel_application/pages/login_page.dart';
// ignore: depend_on_referenced_packages

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('assets/images/avatar.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange.shade300,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePages()));
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ngo Binh Duong",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "binhduong772@gmail.com",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilePages()));
                    },
                    child: Text(
                      'Edit profile',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade300,
                      side: BorderSide.none,
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Setting",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.translate,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Language",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Notifications setting",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.help_center,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Help center",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    trailing: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  onTap: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      animType: AnimType.topSlide,
                      title: "Warning",
                      desc: "Do you want to log out?",
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ).show();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
