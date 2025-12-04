import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? newTitle, newContent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = newTitle ?? widget.note.title;
              widget.note.subTitle = newContent ?? widget.note.subTitle;

              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),

          CustomTextFormField(
            hint: widget.note.title,
            onChanged: (value) {
              newTitle = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hint: widget.note.subTitle,
            maxLines: 5,
            onChanged: (value) {
              newContent = value;
            },
          ),
          SizedBox(height: 16),
          EditNoteColorsList(note: widget.note),
        ],
      ),
    );
  }
}
