import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/OnBoardScreen.dart';
import 'package:untitled1/home.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const home();
          } else {
            return const OnBoard();
          }
        }),
      ),
    );
  }
}