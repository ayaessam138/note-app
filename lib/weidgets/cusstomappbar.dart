import 'package:flutter/material.dart';
import 'package:notes/weidgets/cusstomsearchicon.dart';

class Custoumappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        cusstomsearchicon()
      ],
    );
  }
}
