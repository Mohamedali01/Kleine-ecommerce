import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  String? Function(String?)? onSaved;
  String? Function(String?)? validator;
  Future<String?> Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final double? contentPadding;
  final double? height;
  final double? hintTextFontSize;
  final TextEditingController? controller;
  final Color? fillColor;

  CustomTextField(
      {Key? key,
      this.hintText,
      this.prefixIcon,
      this.obscureText = false,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.contentPadding = 20,
      this.height,
      this.onChanged,
      this.suffixIcon,
      this.controller,
      this.hintTextFontSize = 14,
      this.fillColor = const Color(0xff1D192C)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: height,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        onChanged: onChanged,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: validator,
        cursorColor: const Color(0xff000000),
        keyboardType: keyboardType,
        decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: EdgeInsets.all(contentPadding!),
          // errorBorder: OutlineInputBorder(borderSide:BorderSide.none,gapPadding: 0 ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
          filled: true,
          hoverColor: const Color(0xff000000),
          focusColor: const Color(0xff000000),
          hintText: hintText,
          hintStyle: TextStyle(
              color: const Color(0xff000000), fontSize: hintTextFontSize!),
        ),
      ),
    );
  }
}
