import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class custtomtextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kprimarycolor,
        decoration: InputDecoration(
            border: borderradius(),
            enabledBorder: borderradius(),
            focusedBorder: borderradius(kprimarycolor)));
  }

  OutlineInputBorder borderradius([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white));
  }
}
