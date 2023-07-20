part of 'readnotes_cubit.dart';

@immutable
abstract class ReadnotesState {}

class ReadnotesInitial extends ReadnotesState {}

class Readnotesloading extends ReadnotesState {}

class Readnotessucess extends ReadnotesState {
  final List<addnote> noteslist;
  Readnotessucess(this.noteslist);
}

class Readnotesfailure extends ReadnotesState {
  String errormessage;
  Readnotesfailure(this.errormessage);
}
