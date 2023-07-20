import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/readnotes_cubit/readnotes_cubit.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomappbar.dart';
import 'package:notes/weidgets/mainAndAddview/noteslistview.dart';

class notesviewbody extends StatefulWidget {
  const notesviewbody({
    super.key,
  });

  @override
  State<notesviewbody> createState() => _notesviewbodyState();
}

class _notesviewbodyState extends State<notesviewbody> {
  @override
  void initState() {
    BlocProvider.of<ReadnotesCubit>(context).fetchnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Custoumappbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: noteslistview())
        ],
      ),
    );
  }
}
