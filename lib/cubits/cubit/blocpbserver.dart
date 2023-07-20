import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class MyBlocObserver implements BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change =$bloc');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onChange
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('create =$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('CLOSE =$bloc');
  }
}