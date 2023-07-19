import 'package:flutter/material.dart';
import 'package:notes/weidgets/addnotebottomsheet.dart';
import 'package:notes/weidgets/cusstomappbar.dart';
import 'package:notes/weidgets/notesitem.dart';
import 'package:notes/weidgets/noteslistview.dart';

import '../weidgets/notesviewbody.dart';

class notesview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
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
