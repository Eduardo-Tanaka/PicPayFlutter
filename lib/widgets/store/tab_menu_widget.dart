import 'package:flutter/material.dart';

class TabMenuItem extends StatelessWidget {
  final String text;
  final String tooltip;

  const TabMenuItem({
    Key? key,
    required this.text,
    required this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      preferBelow: false,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
