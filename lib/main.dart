import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/Blocobsever.dart';
import 'package:notes/cubits/cubit/addnotes_cubit.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/view/notes_view.dart';
// import 'package:bloc/bloc.dart';
import 'constants.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(addnoteAdapter());
  Hive.openBox<addnote>(knotesbox);

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
