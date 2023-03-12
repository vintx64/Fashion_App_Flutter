import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.onChanged,
      this.inputType,
      this.hintText,
      this.obsecureText = false});
  String? hintText;
  bool? obsecureText;
  TextInputType? inputType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText!,
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  String? requiredField(data) {
    if (data!.isEmpty) {
      return '* field is required';
    }
  }
}
