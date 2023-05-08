import 'package:flutter/material.dart';

TextField HomeTextField(String text, IconData icon, bool isPasswordType,
  TextEditingController controller){
    return TextField (
    controller: controller,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.black,),
    labelText: text,
    labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    fillColor: Colors.grey.withOpacity(0.3),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType : TextInputType.emailAddress,
    );
  }