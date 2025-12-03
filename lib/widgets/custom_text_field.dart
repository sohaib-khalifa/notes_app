import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
