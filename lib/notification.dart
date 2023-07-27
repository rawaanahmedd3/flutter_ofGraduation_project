import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(height: 200),
        SvgPicture.asset("assets/artwork.svg"),
        SizedBox(height: 20),
        Text(
          "No Notifications Yet",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
