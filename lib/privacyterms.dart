import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class privacyterms extends StatelessWidget {
  const privacyterms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy terms'),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),

      body: Container(
        child: Text('We are honored to have you at our application,by being a PreMed user you accept the practices describes in this privacy policy notice'
            'The privacy policy notice describes the type of information neecessary for our app and all its assets to gather from you in order to provide your services '
            'and help you to know what is the specialization you need. this information include your name,age,previous sergeries and early laboratory tests you do '
            'we continue to foster ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
          ),
        ),




      ),

    );


  }
}
