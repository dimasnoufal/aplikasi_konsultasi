import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aplikasi_konsultasi/shared/theme.dart';
import '../../bloc/export.dart';

class CustomInputHide extends StatelessWidget {
  final String hintText;
  final EdgeInsets margin;
  final Function(String) onTextChanged;

  const CustomInputHide({
    super.key,
    required this.hintText,
    this.margin = const EdgeInsets.all(0),
    required this.onTextChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: BlocProvider(
        create: (context) => HideBloc(),
        child: BlocBuilder<HideBloc, HideState>(
          builder: (context, state) {
            return TextFormField(
              onChanged: onTextChanged,
              obscureText: state.isHide,
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
                suffixIcon: IconButton(
                  icon: Icon(
                    state.isHide ? Icons.visibility_off : Icons.visibility,
                    color: state.isHide ? kLightGreyColor : kPrimaryColor,
                  ),
                  onPressed: () {
                    context.read<HideBloc>().add(HidePassword(state.isHide));
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
