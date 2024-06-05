import 'package:flutter/material.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.color,
  });

  final IconData icon;
  final String text;
  final Function() onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
              size: color != null ? size.height * 0.030 : size.height * 0.028,
            ),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: color != null ? FontWeight.w500 : FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
