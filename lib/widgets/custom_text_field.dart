import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.keyboardInput,
      this.onChanged,
      this.hintText,
      this.obsecureText = false});
  String? hintText;
  Function(String)? onChanged;
  bool? obsecureText;
  TextInputType? keyboardInput;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardInput,
      obscureText: obsecureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
