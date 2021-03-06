import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String texto;
  final VoidCallback onTap;
  final double? width;

  const CardWidget({
    Key? key,
    required this.icon,
    required this.texto,
    required this.onTap,
    this.width = 110,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: Colors.green,
                ),
                Text(
                  texto,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
