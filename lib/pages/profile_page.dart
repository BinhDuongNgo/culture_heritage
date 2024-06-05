// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/pages/login_page.dart';
import 'package:travel_application/modals/settings_modal.dart';
import 'package:travel_application/widgets/edit_profile.dart';
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
                EditProfile(),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                    settings.length,
                    (index) {
                      return widgetA(context, index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget widgetA(BuildContext context, int index) {
    return InkWell(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black.withOpacity(0.1),
          ),
          child: Icon(
            settings[index].icon,
            color: Colors.black,
          ),
        ),
        title: Text(
          settings[index].name,
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
      onTap: () {
        if (settings[index].name == "Logout") {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            animType: AnimType.topSlide,
            title: "Warning",
            desc: "Do you want to log out?",
            btnCancelOnPress: () {},
            btnOkOnPress: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ).show();
        }
      },
    );
  }
}
