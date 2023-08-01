import 'package:flutter/material.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/weidgets/editview/editnoteviewbody.dart';

class editnoteview extends StatelessWidget {
  editnoteview({required this.notes});
  final addnote notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: editnoteviewbody(
      notes: notes,
    ));
  }
}
