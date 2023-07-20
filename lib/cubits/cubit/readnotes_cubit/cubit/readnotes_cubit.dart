import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';

import '../../../../models/addnote.dart';

part 'readnotes_state.dart';

class ReadnotesCubit extends Cubit<ReadnotesState> {
  ReadnotesCubit() : super(ReadnotesInitial());
  fetchnotes() async {
    try {
      var notebox = Hive.box<addnote>(knotesbox);
      List<addnote> noteslist = notebox.values.toList();
      emit(Readnotessucess(noteslist));
    } catch (e) {
      emit(Readnotesfailure(e.toString()));
    }
  }
}
