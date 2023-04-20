import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/note_item.dart';
import 'package:noteapp/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children:const  [
            CustomAppBar(),
            NoteItem(),
            Expanded(child: NotesListView())

            
          ],
        ),
      ),
    );
  }
}

