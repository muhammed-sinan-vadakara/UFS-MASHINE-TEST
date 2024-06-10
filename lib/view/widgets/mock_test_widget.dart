import 'package:flutter/material.dart';

class MockTestWidgets extends StatefulWidget {
  final Widget icons;
  final String name;

  const MockTestWidgets({super.key, required this.name, required this.icons});

  @override
  State<MockTestWidgets> createState() => _MockTestWidgetsState();
}

class _MockTestWidgetsState extends State<MockTestWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 120,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16)),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: const Color.fromARGB(103, 0, 0, 0),
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
