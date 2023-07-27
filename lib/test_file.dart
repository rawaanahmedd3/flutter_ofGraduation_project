
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:untitled1/core/widgets/Button.dart';

final ImagePicker _picker = ImagePicker();

class TestPage1 extends StatefulWidget {


  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 95),
              Row(children: [
                Expanded(
                    child: Text("Scan your skin now!",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold))),
                Icon(Icons.search, size: 70)
              ]),
              const SizedBox(height: 15),
              SizedBox(
                  width: 250,
                  child: Text(
                    "More than 1.5 million people are diagnosed with skin cancer every year. Early detection is essential. - Scan your suspicious areas now.",
                    style: TextStyle(fontSize: 15, color: Colors.black, height: 1.6),
                  )),
              const SizedBox(height: 150),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Button(
                      label: "Use existing Scan",
                      onTap: () =>
                          abstractHandler(context, ImageSource.gallery)),
                  const SizedBox(height: 20),
                  Button(
                      label: "Take a Scan",
                      onTap: () =>
                          abstractHandler(context, ImageSource.camera)),
                ],
              )
            ],
          )),
    );
  }
}



void abstractHandler(BuildContext context, ImageSource imageSource) {
  _picker.pickImage(source: imageSource).then((image) {
    if (image != null) {
      Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 1,
        numResults: 1,
      ).then((prediction) {
        if (prediction != null) {
          dynamic finalPrediction = prediction.first;
       /*   image.readAsBytes().then((value) => predictionBloc.setPrediction(
              finalPrediction["label"],
              finalPrediction["confidence"],
              image.path,
              value));*/
          print("predction resultsss ============================== ${finalPrediction}");
        }
      });
    }
  });
}
