import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants.dart';

import '../../models/addnote.dart';

part 'addnotes_state.dart';

class AddnotesCubit extends Cubit<AddnotesState> {
  AddnotesCubit() : super(AddnotesInitial());

  Addnote(addnote note) async {
    emit(Addnotesloading());
    try {
      var notebox = Hive.box<addnote>(knotesbox);
      emit(Addnotessucess());
      notebox.add(note);
    } catch (e) {
      emit(Addnotesfailure(e.toString()));
    }
  }
}
