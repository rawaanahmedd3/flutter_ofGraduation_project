import 'package:flutter/material.dart';
import 'package:untitled1/util/custom_textformfield.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
    return TextField(
        controller: controller,
        obscureText: isPasswordType,
        enableSuggestions: !isPasswordType,
        autocorrect: !isPasswordType,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.black.withOpacity(0.9)),
        decoration: InputDecoration(
            prefixIcon: Icon(
                icon,
                color: Colors.black,
            ),
            labelText: text,
            labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: Colors.black.withOpacity(0.3),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
    );
}

Container signInSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
    return Container(
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF073D91),
        ),
        child: MaterialButton(
            onPressed: () {
                onTap();
            },
            child: Text(
                isLogin ? 'LOG IN' : 'SIGN UP',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
        ),
    );
}

SizedBox reusableTextField2(String text, TextEditingController controller) {
    return SizedBox(
        width: 390,
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
                labelText: text,
                labelStyle: TextStyle(color: Colors.grey.withOpacity(0.9)),
                filled: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: Colors.white.withOpacity(0.3),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                ),
            ),
        ));
}
/*{required final String text1,
    required final TextEditingController controller1,
    required String text2,
    required TextEditingController controller2,
    required String text3,
    required TextEditingController controller3,
    required GlobalKey formkey})*/
/*
Row EntryData(
    {required final String text1,
        required final TextEditingController controller1,
        required String text2,
        required TextEditingController controller2,
        required String text3,
        required TextEditingController controller3,
        required GlobalKey formkey}) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            CustomFormField(key: _formkey,validator: (controller1.text){
            },),
            SizedBox(
                height: 25,
                width: 55,
                child: TextField(
                    controller: controller1,
                ),
            ),
            const SizedBox(width: 30),
            Text(text2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
                height: 25,
                width: 55,
                child: TextField(
                    controller: controller2,
                ),
            ),
            const SizedBox(width: 30),
            Text(text3,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(
                height: 25,
                width: 55,
                child: TextField(
                    controller: controller3,
                ),
            ),
        ]);
}
*/
