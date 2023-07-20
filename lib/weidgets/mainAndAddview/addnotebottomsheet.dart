import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/cubit/addnotes_cubit.dart';
import 'package:notes/weidgets/mainAndAddview/addnoteform.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';
import 'package:notes/weidgets/mainAndAddview/custtombutton.dart';

class addnotebottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnotesCubit(),
      child: BlocConsumer<AddnotesCubit, AddnotesState>(
        listener: (context, state) {
          if (state is Addnotessucess) {
            Navigator.pop(context);
          }
          if (state is Addnotesfailure) {
            print('Failed ${state.errormessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is Addnotesloading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: addnoteform()),
            ),
          );
        },
      ),
    );
  }
}
