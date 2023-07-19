import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/addnoteform.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';
import 'package:notes/weidgets/mainAndAddview/custtombutton.dart';

class addnotebottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: addnoteform(),
      ),
    );
  }
}
