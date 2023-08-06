import 'package:flutter/material.dart';
import 'package:task/View/job_list.dart';
import 'package:task/View/profile.dart';
import 'package:task/View/search.dart';

import '../Widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobs List'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Search()));
            },
            icon: const Icon(Icons.search_outlined),
          )
        ],
      ),
      drawer: const SideBar(),
      body: const Column(
        children: [
          Expanded(child: JobsList()),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
