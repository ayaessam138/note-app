import 'package:flutter/material.dart';
import 'package:notes/weidgets/mainAndAddview/cusstomtextfield.dart';
import 'package:notes/weidgets/mainAndAddview/custtombutton.dart';

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          custtomtextfield(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          custtomtextfield(
            onsaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxlines: 6,
          ),
          const SizedBox(
            height: 32,
          ),
          custtombutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
