import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomsearchicon.dart';

class Custoumappbar extends StatelessWidget {
  Custoumappbar({
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        cusstomsearchicon(
          icon: icon,
        )
      ],
    );
  }
}
