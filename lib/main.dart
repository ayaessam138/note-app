import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/Blocobsever.dart';
import 'package:notes/cubits/cubit/addnotes_cubit/addnotes_cubit.dart';
import 'package:notes/cubits/cubit/readnotes_cubit/readnotes_cubit.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/view/notes_view.dart';
// import 'package:bloc/bloc.dart';
import 'constants.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(addnoteAdapter());
  await Hive.openBox<addnote>(knotesbox);

  runApp(Notes());
}

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ReadnotesCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: notesview(),
      ),
    );
  }
}
