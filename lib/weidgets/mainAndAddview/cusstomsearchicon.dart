import 'package:flutter/material.dart';

class cusstomsearchicon extends StatelessWidget {
  const cusstomsearchicon({super.key, required this.icon, this.onpressed});
  final IconData icon;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
      )),
    );
  }
}
