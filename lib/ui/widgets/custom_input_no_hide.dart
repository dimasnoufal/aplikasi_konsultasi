import 'package:aplikasi_konsultasi/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomInputNoHide extends StatelessWidget {
  final String hintText;
  final EdgeInsets margin;
  final Function(String) onTextChanged;
  const CustomInputNoHide({
    super.key,
    required this.hintText,
    this.margin = EdgeInsets.zero,
    required this.onTextChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        onChanged: onTextChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: lightGreyTextStyle.copyWith(
            fontSize: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
