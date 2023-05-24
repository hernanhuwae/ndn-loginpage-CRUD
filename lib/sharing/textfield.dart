import 'package:flutter/material.dart';

class ShareTextField extends StatelessWidget {
  final bool hideText;
  final String hintText;
  final TextEditingController controller;
  const ShareTextField({
    super.key,
    required this.controller,
    required this.hideText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,
        obscureText: hideText,
        style: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xff03265B)),
            prefixIcon: Icon(Icons.email, size: 30, color: Colors.blueAccent),
            focusColor: Colors.redAccent),
      ),
    );
  }
}
