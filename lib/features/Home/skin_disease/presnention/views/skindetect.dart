
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:untitled1/features/Home/skin_disease/presnention/views/diagnosis_skin_result.dart';

class skindetect extends StatefulWidget {
  @override

  State<skindetect> createState() => _skindetectState();
}

class _skindetectState extends State<skindetect> {
  final imagepicker=ImagePicker();
  String? _output;
  dynamic result;
  final ImagePicker _picker = ImagePicker();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Skin Detection"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                transform: Matrix4.translationValues(-15.0, -20, 0.0),
                child: Image(
                  image: AssetImage("assets/WhatsApp3.jpg"),
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Row(children: [
                Expanded(
                    child: Text("Scan your skin now!",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold))),
                Icon(Icons.search, size: 70)
              ]),
              const SizedBox(height: 35),
              Row(children: [
                Icon(
                  Icons.image,
                  size: 20,
                  color: Colors.black,
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                SizedBox(
                    width: 300,
                    child: Text(
                      "Scan your your suspicious area now.",
                      style: TextStyle(
                          fontSize: 15, color: Colors.black, height: 1.6),
                    )),
              ]),
              Row(children: [
                Icon(
                  Icons.warning_amber_outlined,
                  size: 20,
                  color: Colors.yellow,
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
                SizedBox(
                    width: 300,
                    child: Text(
                      "The result depends on neural network prediction, so it's not 100% right",
                      style: TextStyle(
                          fontSize: 15, color: Colors.black, height: 1.6),
                    )),
              ]),
              const SizedBox(height: 100),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(370, 40)),
                    child: Text('Upload Image'),
                    onPressed: () {
                      result=abstractHandler(context, ImageSource.gallery);
                      setState(() {

                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(370, 40)),
                    child: Text('Take Image'),
                    onPressed: () {
                      result=abstractHandler(context, ImageSource.camera);
                    },
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  dynamic abstractHandler(BuildContext context, ImageSource imageSource) {
    _picker.pickImage(source: imageSource).then((image) {
      if (image != null) {
        Tflite.runModelOnImage(
          path: image.path,
          imageMean: 0.0,
          imageStd: 1,
          numResults: 4,
        ).then((prediction) {
          if (prediction != null) {
            dynamic finalPrediction = prediction[0]['label'].toString();
            print("predction resultsss ============================== ${finalPrediction}");
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Skin_Diagnosis(diseaselabel: finalPrediction,)));
            return finalPrediction;

          }
        });
      }
    });
  }

}


