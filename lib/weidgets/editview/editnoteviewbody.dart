import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/readnotes_cubit/readnotes_cubit.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomappbar.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';

class editnoteviewbody extends StatefulWidget {
  editnoteviewbody({required this.notes});
  final addnote notes;

  @override
  State<editnoteviewbody> createState() => _editnoteviewbodyState();
}

class _editnoteviewbodyState extends State<editnoteviewbody> {
  String? subtitle, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Custoumappbar(
            onpressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subtitle = subtitle ?? widget.notes.subtitle;
              widget.notes.save();
              BlocProvider.of<ReadnotesCubit>(context).fetchnotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          custtomtextfield(
              onchanged: (value) {
                title = value;
              },
              hint: widget.notes.title ),
          const SizedBox(
            height: 16,
          ),
          custtomtextfield(
            onchanged: (value) {
              subtitle = value;
            },
            hint: widget.notes.subtitle,
            maxlines: 5,
          )
        ],
      ),
    );
  }
}
