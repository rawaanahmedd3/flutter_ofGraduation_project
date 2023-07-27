import 'package:flutter/material.dart';

class history extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    "History",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Your past checks",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 290),
                  Container(
                    alignment: Alignment.center,
                    child:Text(
                      "Nothing yet",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ], 
              ),
            ),
          ),
        ],
      ),
    );
  }
}