import 'package:flutter/material.dart';
import 'package:notes/view/notes_view.dart';

void main() {
  runApp(Notes());
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: notesview(),
    );
  }
}
