import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomappbar.dart';
import 'package:notes/weidgets/mainAndAddview/noteslistview.dart';

class notesviewbody extends StatelessWidget {
  const notesviewbody({
    super.key,
  });

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
