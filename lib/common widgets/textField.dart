import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gamma/Constant.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType})
      : super(key: key);
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containercol,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        obscureText: isPass,
        keyboardType: textInputType,
        style: TextStyle(color: ff),
        controller: textEditingController,
        decoration: InputDecoration(
            hintStyle: TextStyle(
              color: ff,
            ),
            border: InputBorder.none,
            hintText: hintText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0)),
      ),
    );
  }
}
