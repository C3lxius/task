import 'package:flutter/material.dart';
import 'package:task/View/home_page.dart';
import 'package:task/View/profile.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Container(
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/user.png'),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Abdulraqib O.'),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_outline, color: Colors.orange),
                        Icon(Icons.star_outline, color: Colors.orange),
                        Icon(Icons.star_outline, color: Colors.orange),
                        Icon(Icons.star_outline, color: Colors.orange),
                        Icon(Icons.star_outline, color: Colors.orange),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Side Menu Items
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Jobs'),
              onTap: () {
                //close sidebar
                Navigator.pop(context);

                //Navigate to clicked page
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () {
                //close sidebar
                Navigator.pop(context);

                //Navigate to clicked page
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
