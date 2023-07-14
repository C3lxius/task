import 'package:flutter/material.dart';

import '../Utilities/job_card.dart';

class JobsList extends StatelessWidget {
  const JobsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Row of Job Categories
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 1.0,
                shadowColor: const Color.fromARGB(255, 78, 78, 78),
                child: SizedBox(
                  width: 90,
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('lineups'),
                      Container(
                        height: 40.0,
                        width: 30.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text('25'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 90,
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Selects'),
                      Container(
                        width: 30.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255, 6, 168, 90),
                        child: Text('10'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: 90,
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Joinees'),
                      Container(
                        width: 30.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 0, 65, 118),
                        child: Text('05'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // ListView of currently available jobs
        Expanded(
          child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return JobCard();
              }),
        )
      ],
    );
  }
}
