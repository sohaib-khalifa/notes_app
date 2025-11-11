import 'package:flutter/material.dart';
import 'package:notes_app/widgets/noted_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotedViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyanAccent,
        // backgroundColor: const Color(0xFF4EE4C1),
        shape: CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
