import 'package:flutter/material.dart';
import 'package:travel_application/pages/login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1.0),
      body: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: screenHeight * 0.25,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: screenHeight * 0.40,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.10,
                  width: screenWidth * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.10,
                  width: screenWidth * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Password"),
                      prefixIcon: Icon(Icons.lock_person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.10,
                  width: screenWidth * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("Confirm password"),
                      prefixIcon: Icon(Icons.lock_person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: screenHeight * 0.3,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                Center(
                  child: Text("Or"),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: screenHeight * 0.05,
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                          ),
                          InkWell(
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
