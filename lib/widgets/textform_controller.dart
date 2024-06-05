import 'package:flutter/material.dart';

class TextFormController extends StatelessWidget {
  final String name;
  final IconData icon;
  final TextEditingController controller;
  const TextFormController(this.name,this.icon,this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: screenHeight * 0.10,
        width: screenWidth * 0.85,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: name,
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
