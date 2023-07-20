import 'package:flutter/material.dart';
import 'package:notes/models/addnote.dart';
import 'package:notes/view/edinote_view.dart';

class notesitem extends StatelessWidget {
  notesitem({this.noteslist});
  final addnote? noteslist;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return editnoteview();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
            color: Color(noteslist!.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteslist!.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  noteslist!.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(noteslist!.date,
                  style: TextStyle(color: Colors.black.withOpacity(.5))),
            )
          ],
        ),
      ),
    );
  }
}
