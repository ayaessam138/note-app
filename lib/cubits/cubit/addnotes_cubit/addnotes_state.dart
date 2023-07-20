part of 'addnotes_cubit.dart';

@immutable
abstract class AddnotesState {}

class AddnotesInitial extends AddnotesState {}

class Addnotesloading extends AddnotesState {}

class Addnotessucess extends AddnotesState {}

class Addnotesfailure extends AddnotesState {
  String errormessage;
  Addnotesfailure(this.errormessage);
}
