import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:untitled1/util/custom_textformfield.dart';
import '../../../../../reusable_widget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

import 'package:untitled1/features/Home/cbc_disease/presentianon/views/Cbc_result_page.dart';

class bloodtest extends StatelessWidget {
  // for CBC
  TextEditingController rbc = TextEditingController();

  TextEditingController pcv = TextEditingController();

  TextEditingController mcv = TextEditingController();

  TextEditingController mch = TextEditingController();

  TextEditingController mchc = TextEditingController();

  TextEditingController rdw = TextEditingController();

  TextEditingController tlc = TextEditingController();

  TextEditingController plt = TextEditingController();

  TextEditingController hgb = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  dynamic predValue ;

  var predoutputext = '';

  var rbc_string;
  var pcv_string;
  var mcv_string;
  var mch_string;
  var mchc_string;
  var rdw_string;
  var tlc_string;
  var plt_string;
  var hgb_string;

  var rbc_double;
  var pcv_double;
  var mcv_double;
  var mch_double;
  var mchc_double;
  var rdw_double;
  var tlc_double;
  var plt_double;
  var hgb_double;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("CBC Testing"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "*For CBC Test Results",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Text('RBC',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(

                            contoller: rbc,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                             rbc_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('PCV',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: pcv,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              pcv_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('MCV',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: mcv,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              mcv_string=value;
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Text('MCH',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: mch,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              mch_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('MCHC',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: mchc,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              mchc_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('RDW',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: rdw,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              rdw_string=value;
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Text('TLC',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: tlc,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              tlc_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('PLT',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: plt,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              plt_string=value;
                            },
                          ),
                          const SizedBox(width: 10),
                          Text('HGB',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          CustomFormField(
                            contoller: hgb,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return '';
                              }
                            },
                            OnSaved: (value){
                              hgb_string=value;
                            },
                          )
                        ],
                      ),

                      const SizedBox(height: 40),
                      ElevatedButton(
                        style:
                        ElevatedButton.styleFrom(minimumSize: const Size(370, 40)),
                        child: const Text('Done', style: TextStyle(fontSize: 16)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            change_to_double();
                            predData();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cbc_Diagnosis(diseaselabel: predoutputext)));
                          } else {
                            print('missing');
                          }
                        },
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  void change_to_double(){
     rbc_double=double.tryParse(rbc_string);
     pcv_double=double.tryParse(pcv_string);
     mcv_double=double.tryParse(mcv_string);
     mch_double=double.tryParse(mch_string);
     mchc_double=double.tryParse(mchc_string);
     rdw_double=double.tryParse(rdw_string);
     tlc_double=double.tryParse(tlc_string);
     plt_double=double.tryParse(plt_string);
     hgb_double=double.tryParse(hgb_string);

  }
  Future<void> predData() async {

    final interpreter = await tfl.Interpreter.fromAsset(
        'assets/cbc_model/final_cbc_model.tflite');
    var input = [
      [
        rbc_double, pcv_double, mcv_double, tlc_double, plt_double,hgb_double,mch_double,rdw_double,mchc_double
      ]
    ];

    //      [1, 28, 0, 5.66, 34,60.1,17,28.2,20,11.1,128.32,9.6]
    //      [40, 80, 1.025, 0, 0,1,1,140,10,1.2,135,5,15,36,5,26,0,3,1,0,0,0,0,0]
    var output = List.filled(9, 0)
        .reshape([1, 9]); //    var output = List.filled(1, 0).reshape([1, 12]);
    interpreter.run(input, output);
    print(output[0][0]);
    predValue=output;
    if(output[0][0]==1.0){
      predoutputext='Anemia';
    }
    else{
      predoutputext='No-Anemia';

    }
}
}
