import 'package:flutter/material.dart';

import 'dialog_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, 
  required this.controller,
  required this.onSave,
  required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Add a new task",
            ),

          ),

          // buttons -> save button + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            //save button
            dialogButton(text: "Save", onPressed: onSave),

            //Gap between buttons
            const SizedBox(width: 8),

            //cancel button
            dialogButton(text: "Cancel", onPressed: onCancel),

          ],)
        ]),
        ),
    );
  }
}