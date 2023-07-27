import 'dart:async';
import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';


class Tensorflow extends StatefulWidget {
  const Tensorflow({Key? key}) : super(key: key);

  @override
  State<Tensorflow> createState() => _TensorflowState();
}

class _TensorflowState extends State<Tensorflow> {

  late File _image;
  late List _results;
  bool imageSelect=false ;
  final _imagepicker=ImagePicker();


  @override
  void initState(){
    super.initState();
    loadModel();
  }

  Future loadModel()
  async {
    await Tflite.loadModel(model:"assets/model (1).tflite" ,labels:"assets/Labels.txt" )!;
  }
  Future  ImageClassification(File image) async {


    var recognitions = await Tflite.runModelOnImage(
      asynch: true,
      numResults: 2,
      path:"",
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _results=recognitions!;
      _image=image;
      imageSelect=true;
    });
  }
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Classification",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: ListView(
        children: [
          (imageSelect) ? Container(
            margin: const EdgeInsets.all(10),
            //child: Image.file(_image ),
          ) : Container(
            margin: const EdgeInsets.all(10),
            child: Opacity(
              opacity: 0.8,
              child: Center(
                child: Text("No image selected"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect) ? _results.map((result) {
                return Card(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text("${result['label']} - ${result['confidence']
                        .toStringAsFixed(2)}"
                      , style: const TextStyle(color: Colors.red, fontSize: 20,
                      ),
                    ),
                  ),
                );
              }).toList() : [],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: "Pick Image ",
        child: Icon(Icons.image),
      ),
    );
  }
  Future pickImage()
  async {
    final ImagePicker _picker = ImagePicker();

//pick file from gallery, it will return XFile
    final File? pickedFile = (await _imagepicker.pickImage(source: ImageSource.gallery)) as File?;

//convert XFile to File
    //File  imagefile = File(pickedFile!.path);

  }
}
