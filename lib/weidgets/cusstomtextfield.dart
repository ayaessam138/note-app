import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class custtomtextfield extends StatelessWidget {
  custtomtextfield({required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: kprimarycolor,
        maxLines: maxlines,
        decoration: InputDecoration(
            hintText: hint,
            border: borderradius(),
            enabledBorder: borderradius(),
            focusedBorder: borderradius(kprimarycolor)));
  }

  OutlineInputBorder borderradius([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Color ?? Colors.white));
  }
}
