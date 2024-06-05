import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_application/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:travel_application/pages/login_page.dart';
import 'package:travel_application/widgets/textform_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String email = "Email";
    IconData emailIcon = Icons.email;
    String password = "Password";
    IconData passwordIcon = Icons.lock_person;
    String confirmPassword = "Confirm Password";
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1.0),
        body: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: screenHeight * 0.25,
              child: const Center(
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
                  TextFormController(email, emailIcon, _emailController),
                  TextFormController(password, passwordIcon, _passwordController),
                  TextFormController(confirmPassword, passwordIcon, _confirmPasswordController),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: screenHeight * 0.3,
              child: Column(
                children: [
                  InkWell(
                    onTap: _signUp,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
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
                  const Center(
                    child: Text("Or"),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: screenHeight * 0.05,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                          ),
                          InkWell(
                            child: const Text(
                              "Sign in",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                          ),
                        ],
                      ),
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

  void _signUp() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if ((user != null) && (password == confirmPassword)) {
      AwesomeDialog(
        // ignore: use_build_context_synchronously
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.topSlide,
        title: "Success",
        desc: "Registered successfully, moving to the login screen",
        btnOkOnPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
      ).show();
    } else {
      AwesomeDialog(
        // ignore: use_build_context_synchronously
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.topSlide,
        title: "Error",
        desc: "Incorrect email, password or confirm password",
        btnOkOnPress: () {},
      ).show();
    }
  }
}
