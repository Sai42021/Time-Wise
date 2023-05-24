import 'package:flutter/material.dart';

class dialogButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  dialogButton({super.key, 
  required this.text, 
  required this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}