import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noteapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      }),
      child: Container(
        padding: EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16),
              child: Text("Build Your Career",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18)),
            ),
            trailing: IconButton(
              onPressed: (() {}),
              icon: Icon(FontAwesomeIcons.trash, size: 24, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("May21, 2022",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(.4))),
          )
        ]),
      ),
    );
  }
}
