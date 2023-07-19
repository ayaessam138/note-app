import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/notesitem.dart';

class noteslistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: notesitem(),
        );
      }),
    );
  }
}
