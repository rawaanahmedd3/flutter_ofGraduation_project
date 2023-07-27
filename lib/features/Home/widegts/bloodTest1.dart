import 'package:flutter/material.dart';


import '../cbc_disease/presentianon/views/CBC.dart';
import '../kidney_disease/presention/views/kidney.dart';

class bloodTest1 extends StatelessWidget {
  const bloodTest1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          title: Text('Blood Tests'),
          backgroundColor: Colors.blue[700],
        ),
      body: ListView(
        children: [
      Padding(
      padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: const [
                Expanded(
                  child: Text("Enter values of the following...",
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold)),
                ),
                Image(
                  image: AssetImage("assets/WhatsApp2.jpg"),
                  height: 80,
                  width: 80,
                ),
              ]),
              const SizedBox(height: 30),
              Row(children: const [
                Icon(
                  Icons.warning_amber_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                SizedBox(
                    width: 300,
                    child: Text(
                      "The prediction is based on the resulted values of your blood test, so please enter them carefully.",
                      style: TextStyle(
                          fontSize: 15, color: Colors.black, height: 1.6),
                    )),
              ]),
                ]
        )
      )
      ),






          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          ),
          ListTile(
            title: Text('CBC values',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold),
            ),
            textColor: Colors.black87,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cntext)=> bloodtest()),);
        },
          ),
    ListTile(
    title: Text('Kidney values',
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold),
    ),
    textColor: Colors.black87,
    trailing: Icon(Icons.arrow_forward_ios),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(context)=> kidney()),);
    },

    )],
      ),


    );

  }
}
