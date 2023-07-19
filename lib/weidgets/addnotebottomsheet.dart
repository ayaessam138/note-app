import 'package:flutter/material.dart';
import 'package:notes/weidgets/cusstomtextfield.dart';
import 'package:notes/weidgets/custtombutton.dart';

class addnotebottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            custtomtextfield(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            custtomtextfield(
              hint: 'content',
              maxlines: 6,
            ),
            SizedBox(
              height: 32,
            ),
            custtombutton()
          ],
        ),
      ),
    );
  }
}
