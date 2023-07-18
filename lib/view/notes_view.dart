import 'package:flutter/material.dart';
import 'package:notes/weidgets/cusstomappbar.dart';

class notesview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notesviewbody(),
    );
  }
}

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
          Custoumappbar(),
        ],
      ),
    );
  }
}
