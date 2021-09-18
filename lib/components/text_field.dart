import 'package:flutter/material.dart';
import 'package:social_app_ui_kit/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.white30,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white60),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        // for hint spacing :D
        prefix: const SizedBox(width: AppConsts.defPadding * 2),
      ),
    );
  }
}
