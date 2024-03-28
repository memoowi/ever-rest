import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  CustomFormField({
    super.key,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.autofillHints,
    this.keyboardType,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      autofillHints: autofillHints,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}
