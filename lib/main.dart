import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/view/notes_view.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(knotesbox);
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
