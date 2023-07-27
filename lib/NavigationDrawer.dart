import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Color.fromRGBO(0, 45, 220, 0.9),
          child: ListView(children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            buildMenuItem(text: 'LOG OUT', icon: Icons.logout)
          ]),
        ));
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: Color.fromRGBO(0, 45, 220, 0.9),
    onTap: () {
      FirebaseAuth.instance.signOut();
    },
  );
}
