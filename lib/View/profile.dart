import 'package:flutter/material.dart';
import 'package:task/Widgets/side_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.green,
      ),
      drawer: const SideBar(),
      body: const Placeholder(),
    );
  }
}
