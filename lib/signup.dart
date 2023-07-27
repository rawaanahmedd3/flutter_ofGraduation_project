import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Login.dart';
import 'package:untitled1/core/components/text_form_field.dart';
import 'package:untitled1/reusable_widget.dart';

import 'auth.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _confirmpasswordTextController =
  TextEditingController();

  Future signUp() async {
    if (PasswordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailTextController.text.trim(),
        password: _passwordTextController.text.trim(),
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Auth()));
    }
  }

  bool PasswordConfirmed() {
    if (_passwordTextController.text.trim() ==
        _confirmpasswordTextController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _confirmpasswordTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromRGBO(0, 45, 220, 0.9),
                  )),
              const SizedBox(height: 40, width: 0),
              Text(
                'Email',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF073D91),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2, width: 0),
              DefaultTextFormField(
                context: context,
                controller: _emailTextController,
                keyboardType: TextInputType.emailAddress,
                hint: 'Email Address',
                prefixIcon: Icons.person_outline,
                validate: (String? value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12, width: 0),
              Text(
                'Password',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF073D91),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2, width: 0),
              DefaultTextFormField(
                context: context,
                controller: _passwordTextController,
                keyboardType: TextInputType.visiblePassword,
                hint: 'Password',
                prefixIcon: Icons.lock_outline,
                validate: (String? value) {
                  if (value!.trim().isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12, width: 0),
              Text(
                'Confirm Password',
                style: GoogleFonts.poppins(
                  color: const Color(0xFF073D91),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2, width: 0),
              DefaultTextFormField(
                context: context,
                controller: _confirmpasswordTextController,
                keyboardType: TextInputType.visiblePassword,
                hint: 'Confirm Password',
                prefixIcon: Icons.lock_outline,
                validate: (String? value) {
                  if (value!.trim().isEmpty) {
                    return 'Please Enter Password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40, width: 0),
              signInSignUpButton(context, false, () {
                onTap:
                signUp();
              }),
              const SizedBox(height: 90, width: 0),
              signUpOptions()
            ],
          ),
        ),
      ),

      // body: Column(
      //   children: <Widget>[
      //     RichText(
      //       text: const TextSpan(
      //         children: <TextSpan>[
      //           TextSpan(
      //               text: 'SignUp',
      //               style: TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 fontSize: 30,
      //                 color: Color.fromRGBO(0, 45, 220, 0.9),
      //               )),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),
      //     reusableTextField("Enter E_Mail", Icons.person_outline, false,
      //         _emailTextController),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     reusableTextField("Enter Password", Icons.lock_outline, true,
      //         _passwordTextController),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     reusableTextField("Confirm Password", Icons.password, false,
      //         _confirmpasswordTextController),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     signInSignUpButton(context, true, ()
      //     {
      //       signUp();
      //     }),
      //     signUpOptions()
      //   ],
      // ),
    );
  }

  Row signUpOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already a member?", style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
          child: const Text(
            "Sign in here",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
