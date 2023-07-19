import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomappbar.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';

class editnoteviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Custoumappbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          custtomtextfield(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          custtomtextfield(
            hint: 'Content',
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
