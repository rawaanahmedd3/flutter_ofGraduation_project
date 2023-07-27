import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    Key? key,
     this.hintText,
    this.validator,
    required this.contoller,required this.OnSaved,

  }) : super(key: key);
  final String? hintText;
  final String? Function(String?)? validator;
  final String? Function(String?)? OnSaved;
  final TextEditingController contoller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
/*
        padding: const EdgeInsets.symmetric(horizontal: 0.1),
*/
        width: 65,
        height: 10,
        child: TextFormField(
          onSaved: OnSaved,
            keyboardType: TextInputType.number,
            validator: validator,
          decoration: InputDecoration(),
            textAlign: TextAlign.center,
            maxLines: 1,
            style: const TextStyle(

              overflow: TextOverflow.ellipsis,
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}