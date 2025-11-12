import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,

      cursorColor: kPrimarykey,

      decoration: InputDecoration(
        hintText: hint,

        // hintStyle: TextStyle(color: kPrimarykey),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimarykey),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color color = Colors.white]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      // borderSide: BorderSide(color: color ?? Colors.white),
      borderSide: BorderSide(color: color),
    );
  }
}
