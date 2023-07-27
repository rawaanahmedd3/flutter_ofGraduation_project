import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class PredModel extends StatefulWidget {
  @override
  _PredModelState createState() => _PredModelState();
}

class _PredModelState extends State<PredModel> {
  var predValue = "";
  var predoutputext='';
  @override
  void initState() {
    super.initState();
    predValue = "click predict button";
  }

  Future<void> predData() async {
    final interpreter = await tfl.Interpreter.fromAsset('assets/kidney_model/final_kidney_model.tflite');
    var input = [
      [48, 80, 1.02, 1, 0,2,1,0,0,121,36,1.2,111,2.5,15.4,32,72,34,1,4,1,0,0,0]
    ];

    //      [1, 28, 0, 5.66, 34,60.1,17,28.2,20,11.1,128.32,9.6]
    //      [40, 80, 1.025, 0, 0,1,1,140,10,1.2,135,5,15,36,5,26,0,3,1,0,0,0,0,0]
    var output = List.filled(24, 0).reshape([1,24]);//    var output = List.filled(1, 0).reshape([1, 12]);

    interpreter.run(input, output);
    print(output[0][0]);

    this.setState(() {
      predValue = output[0][0].toString();
      if(predValue=='1.0'){
        predoutputext='chronic';
      }
      else{
        predoutputext='not chronic';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.blue,
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Center(
                child: Text(
                  "[48, 80, 1.02, 1, 0,2,1,0,0,121,36,1.2,111,2.5,15.4,32,72,34,1,4,1,0,0,0]",
                  style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),

                ),
              ),
            ),
            SizedBox(height: 12),
            MaterialButton(
              color: Colors.blue,
              child: Text(
                "predict",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: predData,
            ),
            SizedBox(height: 12),
            Text(
              "Predicted output : $predoutputext ",
              style: TextStyle(color: Colors.red, fontSize: 23),
            ),
          ],
        ),
      ),
    );
  }
}
