import 'package:flutter/material.dart';
import 'package:notes/weidgets/notesitem.dart';

class noteslistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(itemBuilder: (context, index) {
        return notesitem();
      }),
    );
  }
}
