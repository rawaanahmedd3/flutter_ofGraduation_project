import 'package:flutter/material.dart';
import 'package:untitled1/changeEmailandPassword.dart';
import 'package:untitled1/changeLanguage.dart';
import 'package:untitled1/help.dart';
import 'package:untitled1/privacyterms.dart';
import 'history.dart';
class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          ),

          ListTile(
              title: Text('Change email&password',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              textColor: Colors.black87,
              trailing: Icon (Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => (Reset()),),);
              }
          ),
          ListTile(
              title: Text('History',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              textColor: Colors.black87,
              trailing: Icon (Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => (history()),),);
              }
          ),
          ListTile(
              title: Text('Change Language',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              textColor: Colors.black87,
              trailing: Icon (Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => (changeLanguage()),),);
              }
          ),
          ListTile(
              title: Text('Privacy Policy',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              textColor: Colors.black87,
              trailing: Icon (Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => (privacyterms()),),);
              }
          ),
          ListTile(
              title: Text('Help',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              textColor: Colors.black87,
              trailing: Icon (Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => (help()),),);
              }
          ),



        ],
      ),







    );
  }
}
