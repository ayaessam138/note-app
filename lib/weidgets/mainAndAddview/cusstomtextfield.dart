import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class custtomtextfield extends StatelessWidget {
  custtomtextfield({required this.hint, this.maxlines = 1, this.onsaved});
  final String hint;
  final int maxlines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onsaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          }
        },
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
