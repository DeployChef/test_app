import 'package:flutter/material.dart';
import 'package:test_app/models/test.dart';

class TestCard extends StatelessWidget {
  Test test;

  TestCard({
    super.key,
    required this.test,
  });

  @override
  Widget build(BuildContext context) {
    Color targetColor = Colors.black;
    if (!test.isEnable) {
      targetColor = Colors.grey;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        test.title,
        style: TextStyle(fontSize: 26, color: targetColor),
      ),
    );
  }
}
