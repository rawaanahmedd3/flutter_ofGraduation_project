import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled1/Login.dart';
import 'core/widgets/Button.dart';
import 'settings.dart';

class Reset extends StatefulWidget {

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  late String _email,_password;
  final auth =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(title: Text("Reset Password"),
        ) ,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:TextField(keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: ('Email')
                ),
                onChanged: (value){
                  setState(() {
                    _email=value;
                  });
                },
              ),)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  child:Text('Send Request'),
                  onPressed:(){
                    auth.sendPasswordResetEmail(email: _email);
                    Navigator.of(context).pop();
                  },
                )
              ],
            )
          ],
        )
    );
  }
}

