import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  // final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final icon;
  const MyInputField(
      {super.key,
      // required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              // borderSide: BorderSide(color: Color(044473))),
              borderSide: const BorderSide(color: Colors.deepOrange)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.deepOrange),
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade600),
          prefixIcon: icon,
          contentPadding: EdgeInsets.symmetric(vertical: 15)
          ),
    );
  }
}
