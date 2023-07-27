import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField(
      {required this.context,
        required this.controller,
        this.keyboardType,
        required this.validate,
        this.hint,
        this.label,
        this.onTap,
        this.onChanged,
        this.onFieldSubmitted,
        this.obscuringCharacter,
        this.style,
        this.color,
        this.borderSideColor,
        this.prefixColor,
        this.styleColor,
        this.focusNode,
        this.isClickable,
        this.isPassword,
        this.decoration,
        this.suffixPressed,
        this.prefix,
        this.maxLength,
        Key? key,
        this.prefixIcon})
      : super(key: key);
  final BuildContext context;
  final FocusNode? focusNode;
  final Color? color;
  final Color? borderSideColor;
  final Color? styleColor;
  final Color? prefixColor;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String?) validate;
  final String? hint;
  final String? label;
  final dynamic onTap;
  final dynamic onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? isPassword;
  final bool? isClickable;
  final InputDecoration? decoration;
  final IconData? prefixIcon;
  final Widget? prefix;
  final Function? suffixPressed;
  final TextStyle? style;
  final String? obscuringCharacter;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      focusNode: focusNode,
      textAlignVertical: TextAlignVertical.center,
      style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        color: styleColor ?? Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      obscuringCharacter: obscuringCharacter ?? '*',
      controller: controller,
      validator: validate,
      enabled: isClickable ?? true,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      obscureText: isPassword ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 32),
        fillColor: color,
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.blue,
          size: 24,
        ),
        prefixIconColor: prefixColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            const Radius.circular(15.0),
          ),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.blue,
        ),
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.blue,
          height: 1,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            const Radius.circular(15.0),
          ),
          borderSide: BorderSide(
            color: borderSideColor ?? Colors.blue,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(const Radius.circular(15.0)),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            const Radius.circular(15.0),
          ),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        errorStyle: GoogleFonts.poppins(color: Colors.red, fontSize: 12),
      ),
    );
  }
}
