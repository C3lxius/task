import 'package:flutter/material.dart';
import 'package:task/Utilities/job_tag.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color.fromARGB(252, 247, 247, 247),
        elevation: 5.0,
        shadowColor: Color.fromARGB(255, 78, 78, 78),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundColor: Colors.white,
                    child: Text(
                      'FE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter Engineer',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Gratitude Inc.',
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 14.0,
                              color: Color.fromARGB(255, 100, 99, 99),
                            ),
                            Text(
                              'Malad (W), Mumbai',
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0, left: 70.0, right: 75.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  JobTag(color: Colors.green, text: 'Flutter'),
                  JobTag(color: Colors.blue, text: 'Dart'),
                  JobTag(color: Colors.red, text: 'Git'),
                  JobTag(color: Colors.orange, text: 'SQL'),
                ],
              ),
            ),

            //Row for apply and Refer Buttons
            Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 230, 230),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                        child: Text('Apply')),
                    const SizedBox(width: 15.0),
                    ElevatedButton(onPressed: () {}, child: Text('Refer')),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
