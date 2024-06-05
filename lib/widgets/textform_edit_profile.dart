import 'package:flutter/material.dart';

class TextFormEditProfile extends StatelessWidget {
  final String name;
  final IconData icon;
  const TextFormEditProfile(this.name,this.icon, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: name,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
