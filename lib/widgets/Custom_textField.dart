import 'package:flutter/material.dart';
import 'package:paternproject/utility/appColors.dart';

class TextFiels extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final TextInputType textInputKind;
  final bool isPass;
  final Icon icon;
  final Icon suffixicon;

  const TextFiels(
      {this.isPass = false,
      Key? key,
      required this.textEditingController,
      required this.suffixicon,
      required this.icon,
      required this.hintText,
      required this.textInputKind})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        prefixIcon: icon,
        fillColor: AppColors.white,
        focusedBorder: inputBorder,
        hintText: hintText,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.all(8),
        filled: true,
      ),
      keyboardType: textInputKind,
      obscureText: isPass,
    );
  }
}
