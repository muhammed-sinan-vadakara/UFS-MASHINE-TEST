import 'package:flutter/material.dart';

class GapWidget extends StatelessWidget {
  final double height;
  final double width;

  const GapWidget.h2({super.key})
      : height = 2,
        width = 0;

  const GapWidget.h4({super.key})
      : height = 4,
        width = 0;

  const GapWidget.h8({super.key})
      : height = 8,
        width = 0;

  const GapWidget.h16({super.key})
      : height = 16,
        width = 0;

  const GapWidget.h24({super.key})
      : height = 16,
        width = 0;

  const GapWidget.h32({super.key})
      : height = 32,
        width = 0;

  const GapWidget.h40({super.key})
      : height = 40,
        width = 0;

  const GapWidget.h48({super.key})
      : height = 48,
        width = 0;

  const GapWidget.h56({super.key})
      : height = 56,
        width = 0;

  const GapWidget.h64({super.key})
      : height = 64,
        width = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
