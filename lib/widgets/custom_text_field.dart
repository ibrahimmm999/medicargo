import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.placeholder = "",
      this.label = "",
      this.suffixText = "",
      this.isLongText = false,
      this.isPassword = false});
  final TextEditingController controller;
  final String placeholder;
  final String label;
  final bool isPassword;
  final bool isLongText;
  final String suffixText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: widget.label.isNotEmpty,
            child: Text(
              widget.label,
              style: buttonAndFieldText.copyWith(color: textDarkColor),
            )),
        TextFormField(
          maxLines: widget.isLongText ? 4 : 1,
          obscureText: widget.isPassword ? isObscure : false,
          style: GoogleFonts.poppins(
              color: textDarkColor, fontSize: 16, fontWeight: medium),
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: widget.suffixText.isNotEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.suffixText,
                        style:
                            buttonAndFieldText.copyWith(color: textDarkColor),
                      ),
                    ],
                  )
                : Visibility(
                    visible: widget.isPassword,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: Icon(
                          (isObscure ? Icons.visibility : Icons.visibility_off),
                          color: textDarkColor,
                        ))),
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            hintText: widget.placeholder,
            hintStyle: body.copyWith(fontWeight: semibold, color: neutral600),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: textDarkColor, width: 2)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: neutral500,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
