import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/readnotes_cubit/readnotes_cubit.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/weidgets/mainAndAddview/notesitem.dart';

class noteslistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadnotesCubit, ReadnotesState>(
      builder: (context, state) {
        List<addnote> noteslist =
            BlocProvider.of<ReadnotesCubit>(context).noteslist ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: noteslist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: notesitem(noteslist: noteslist[index]),
                );
              }),
        );
      },
    );
  }
}
