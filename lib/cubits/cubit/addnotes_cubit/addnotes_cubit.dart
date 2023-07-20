import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';

import '../../../models/addnote.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'addnotes_state.dart';

class AddnotesCubit extends Cubit<AddnotesState> {
  AddnotesCubit() : super(AddnotesInitial());

  Addnote(addnote note) async {
    emit(Addnotesloading());
    try {
      var notebox = Hive.box<addnote>(knotesbox);
      notebox.add(note);
      emit(Addnotessucess());
    } catch (e) {
      emit(Addnotesfailure(e.toString()));
    }
  }
}
