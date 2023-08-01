import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/addnotes_cubit/addnotes_cubit.dart';

class coloritem extends StatelessWidget {
  final bool ischossen;
  final Color color;
  coloritem({required this.ischossen, required this.color});
  @override
  Widget build(BuildContext context) {
    return ischossen
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class colorlistview extends StatefulWidget {
  @override
  State<colorlistview> createState() => _colorlistviewState();
}

class _colorlistviewState extends State<colorlistview> {
  List<Color> colorlist = [
    Color(0xffABA194),
    Color(0xffCFCBCA),
    Color(0xffD8DDDE),
    Color(0xffD9F7FA)
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemCount: colorlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentindex = index;
                    BlocProvider.of<AddnotesCubit>(context).color =
                        colorlist[index];
                    setState(() {});
                  },
                  child: coloritem(
                    ischossen: currentindex == index,
                    color: colorlist[index],
                  )),
            );
          }),
    );
  }
}
