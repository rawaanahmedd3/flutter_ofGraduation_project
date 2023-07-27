import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/core/components/text_form_field.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/reusable_widget.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  Future signIn() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailTextController.text,
      password: _passwordTextController.text,
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const home()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
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
              const Text('Sign In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color.fromRGBO(0, 45, 220, 0.9),
                  )),
              const SizedBox(height: 40, width: 0),
              Text(
                'Email',
                style: GoogleFonts.roboto(
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
              const SizedBox(height: 20, width: 0),
              Text(
                'Password',
                style: GoogleFonts.roboto(
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
              const SizedBox(height: 5, width: 0),
              InkWell(
                onTap: () {},
                child: Text(
                  'Forget Password?',
                  style: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 29, width: 0),
              signInSignUpButton(context, true, () {
                onTap:
                signIn();
              }),
              const SizedBox(height: 90, width: 0),
              signUpOptions()
            ],
          ),
        ),
      ),
      // Column(
      //   children: <Widget>[
      //     RichText(
      //       text: const TextSpan(
      //         children: <TextSpan>[
      //           TextSpan(
      //               text: 'SignIn',
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
      //     signInSignUpButton(context, true, ()
      //     {
      //             onTap: signIn();
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
        Text(
          "Don't have account? ",
          style: GoogleFonts.roboto(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const signup()));
          },
          child: Text(
            "Sign Up",
            style: GoogleFonts.roboto(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
