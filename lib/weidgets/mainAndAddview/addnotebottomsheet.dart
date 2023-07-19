import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';
import 'package:notes/weidgets/mainAndAddview/custtombutton.dart';

class addnotebottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            custtomtextfield(hint: 'title'),
            const SizedBox(
              height: 16,
            ),
            custtomtextfield(
              hint: 'content',
              maxlines: 6,
            ),
            const SizedBox(
              height: 32,
            ),
            custtombutton()
          ],
        ),
      ),
    );
  }
}
