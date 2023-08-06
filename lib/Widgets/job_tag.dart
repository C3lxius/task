import 'package:flutter/material.dart';

class JobTag extends StatelessWidget {
  final Color color;
  final String text;
  const JobTag({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
