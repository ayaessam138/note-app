import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/addnotebottomsheet.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomappbar.dart';
import 'package:notes/weidgets/mainAndAddview/notesitem.dart';
import 'package:notes/weidgets/mainAndAddview/noteslistview.dart';

import '../weidgets/mainAndAddview/notesviewbody.dart';

class notesview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return addnotebottomsheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: notesviewbody(),
    );
  }
}
