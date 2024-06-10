import 'package:flutter/material.dart';

class MockTestWidgets extends StatelessWidget {
  final Widget iconns;
  final String name;

  MockTestWidgets({super.key, required this.name, required this.iconns});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 140,
      child: Row(
        children: [
          SizedBox(
            width: 2,
          ),
          Container(
            height: 50,
            width: 50,
            child: iconns,
            decoration: BoxDecoration(
                color: const Color.fromARGB(139, 158, 158, 158),
                borderRadius: BorderRadius.circular(16)),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "$name",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
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
