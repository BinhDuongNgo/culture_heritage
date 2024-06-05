import 'package:flutter/material.dart';
import 'package:travel_application/pages/edit_profile_page.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          "binhduong772@gmail.com",
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfilePages()));
            },
            // ignore: sort_child_properties_last
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
      ],
    );
  }
}
