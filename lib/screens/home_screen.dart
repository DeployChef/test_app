import 'package:flutter/material.dart';
import 'package:test_app/components/test_card.dart';
import 'package:test_app/models/test.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TestApp \u00a9")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                    value: _showAll,
                    onChanged: (newValue) {
                      setState(() {
                        _showAll = !_showAll;
                      });
                    }),
                const Text("Показать все"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ...tests.where((element) => _showAll || element.isEnable).map((test) => TestCard(test: test)),
          ],
        ),
      ),
    );
  }
}
