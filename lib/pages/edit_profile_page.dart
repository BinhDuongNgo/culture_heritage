// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:travel_application/widgets/textform_edit_profile.dart';
// ignore: depend_on_referenced_packages

class EditProfilePages extends StatelessWidget {
  const EditProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Name";
    String email = "Email";
    String phone = "Phone number";
    String password = "Password";
    IconData nameIcon = Icons.person;
    IconData emailIcon = Icons.email;
    IconData phoneIcon = Icons.phone;
    IconData passwordIcon = Icons.lock;
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      ),
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
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 50,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormEditProfile(name, nameIcon),
                      TextFormEditProfile(email, emailIcon),
                      TextFormEditProfile(phone, phoneIcon),
                      TextFormEditProfile(password, passwordIcon),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.topSlide,
                      title: "Success",
                      desc: "You have successfully updated your information",
                      btnOkOnPress: () {
                        Navigator.pop(context);
                      },
                    ).show();
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Confirm",
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
        ),
      ),
    );
  }
}
