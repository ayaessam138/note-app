import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';

import '../../../../models/addnote.dart';

part 'readnotes_state.dart';

class ReadnotesCubit extends Cubit<ReadnotesState> {
  ReadnotesCubit() : super(ReadnotesInitial());
  List<addnote>? noteslist;
  fetchnotes() async {
    var notebox = Hive.box<addnote>(knotesbox);
    noteslist = notebox.values.toList();
    emit(Readnotessucess());
  }
}
