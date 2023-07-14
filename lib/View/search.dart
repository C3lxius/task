import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchController = TextEditingController();
  List<String> sampleJobs = ['flutter'];
  bool show = false;
  String text = 'Flutter Engineer';
  String subtext = 'Gratitude Inc.';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: searchController,
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                  hintText: 'search the keyword (flutter)',
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  fillColor: Colors.grey,
                  suffixIconColor: Colors.grey),
              onFieldSubmitted: (_) {
                if (sampleJobs.contains(_)) {
                  setState(() {
                    show = true;
                  });
                } else {
                  setState(() {
                    show = false;
                  });
                }
              },
            ),
          ),
        )
      ]),
      body: show
          ? Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Card(
                    elevation: 5.0,
                    color: Color.fromARGB(252, 247, 247, 247),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: CircleAvatar(
                            radius: 35.0,
                            backgroundColor: Colors.white,
                            child: Text(
                              'FE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  text,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    subtext,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : const SizedBox(),
    );
  }
}
