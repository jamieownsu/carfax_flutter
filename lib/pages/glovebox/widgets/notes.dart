import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
        child: Text('NOTES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
      Card(
        child: TextField(
          maxLength: 2000,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: 'Tap here to enter notes (2000 characters max)',
            hintStyle: TextStyle(fontSize: 12),
          ),
        ),
      )
    ]);
  }
}
