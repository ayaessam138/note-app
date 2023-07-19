import 'package:flutter/material.dart';

import '../constants.dart';

class custtombutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kprimarycolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
          child: Text(
        'Save',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
