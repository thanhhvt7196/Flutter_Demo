import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:textfield_demo/loginPage.dart';

class MyTextField extends StatefulWidget {
  MyTextField({Key key, this.controller, this.placeHolder, this.secureEntry, this.onChanged});
  final TextEditingController controller;
  final String placeHolder;
  final bool secureEntry;
  final VoidCallback onChanged;
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      decoration: new InputDecoration(
        hintText: widget.placeHolder,
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
      ),
      autocorrect: false,
      obscureText: widget.secureEntry ?? false,
      onChanged: (text) {
        widget.onChanged();
      },
    );
  }
}