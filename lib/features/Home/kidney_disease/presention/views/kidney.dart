import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart' as tfl;
import 'package:untitled1/features/Home/kidney_disease/presention/views/kideny_result_page.dart';
import 'package:untitled1/reusable_widget.dart';
import 'package:untitled1/util/custom_textformfield.dart';

class kidney extends StatelessWidget {
  // for kidney disease
  TextEditingController su = TextEditingController();
  TextEditingController sc = TextEditingController();
  TextEditingController ba = TextEditingController();
  TextEditingController bp = TextEditingController();
  TextEditingController sg = TextEditingController();
  TextEditingController al = TextEditingController();
  TextEditingController pc = TextEditingController();
  TextEditingController pcc = TextEditingController();
  TextEditingController bgr = TextEditingController();
  TextEditingController bu = TextEditingController();
  TextEditingController sod = TextEditingController();
  TextEditingController pot = TextEditingController();
  TextEditingController hemo = TextEditingController();
  TextEditingController wc = TextEditingController();
  TextEditingController rc = TextEditingController();
  TextEditingController htn = TextEditingController();
  TextEditingController dm = TextEditingController();
  TextEditingController cad = TextEditingController();
  TextEditingController appet = TextEditingController();
  TextEditingController pe = TextEditingController();
  TextEditingController ane = TextEditingController();
  TextEditingController rbc = TextEditingController();
  TextEditingController pcv = TextEditingController();
  TextEditingController age = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  dynamic predValue;

  var predoutputext = '';

  var su_string;
  var sc_string;
  var ba_string;
  var bp_string;
  var sg_string;
  var al_string;
  var pc_string;
  var pcc_string;
  var bgr_string;
  var bu_string;
  var sod_string;
  var pot_string;
  var hemo_string;
  var wc_string;
  var rc_string;
  var htn_string;
  var dm_string;
  var cad_string;
  var appet_string;
  var pe_string;
  var ane_string;
  var rbc_string;
  var pcv_string;
  var age_string;



  var su_double;
  var sc_double;
  var ba_double;
  var bp_double;
  var sg_double;
  var al_double;
  var pc_double;
  var pcc_double;
  var bgr_double;
  var bu_double;
  var sod_double;
  var pot_double;
  var hemo_double;
  var wc_double;
  var rc_double;
  var htn_double;
  var dm_double;
  var cad_double;
  var appet_double;
  var pe_double;
  var ane_double;
  var rbc_double;
  var pcv_double;
  var age_double;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: const Text("Kidney Tests"),
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
                    "*For Kidney Disease Test Results",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('AGE',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: age,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          age_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      const Text('BP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: bp,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          bp_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('SG',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: sg,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          sg_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('AL',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: al,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          al_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('SU',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: su,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          su_string = value;
                        },
                      ),
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
                        OnSaved: (value) {
                          rbc_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('PC',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: pc,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          pc_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('PCC',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: pcc,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          pcc_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('BA',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: ba,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          ba_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('BGR',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: bgr,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          bgr_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('BU',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: bu,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          bu_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('SC',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: sc,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          sc_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('SOD',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: sod,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          sod_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('POT',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: pot,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          pot_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('HEMO',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: hemo,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          hemo_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        OnSaved: (value) {
                          pcv_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('WC',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: wc,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          wc_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('RC',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: rc,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          rc_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('HTN',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: htn,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          htn_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('DM',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: dm,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          dm_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('CAD',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: cad,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          cad_string = value;
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Text('Appet',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: appet,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          appet_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('PE',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: pe,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          pe_string = value;
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('ANE',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      CustomFormField(
                        contoller: ane,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                        },
                        OnSaved: (value) {
                          ane_string = value;
                        },
                      )
                    ],
                  ),
                  /*EntryData("Age: ", age, "bp: ", bp, "sg: ", sg),
                   EntryData("Al: ", al, "Su: ", su, "Rbc: ", rbc),
                   EntryData("pc: ", pc, "pcc: ", ba, "bgr: ", bgr),
                   EntryData("bu: ", bu, "SC: ", sc, "sod: ", sod),
                   EntryData("pot: ", pot, "hemo: ", hemo, "pcv: ", pcv),
                   EntryData("wc: ", wc, "rc: ", rc, "htn: ", htn),
                   EntryData("dm: ", dm, "cad: ", cad, "appet: ", appet),
                   EntryData("pe: ", pe, "ane: ", ane, "SUA: ", sua),*/
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(370, 40)),
                    child: const Text('Done', style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        change_to_double();
                        predData();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Kideny_Diagnosis(diseaselabel: predoutputext)));
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          )),
    );
  }

  void change_to_double() {

    su_double = double.tryParse(su_string);
    sc_double = double.tryParse(sc_string);
    ba_double = double.tryParse(ba_string);
    bp_double = double.tryParse(bp_string);
    sg_double = double.tryParse(sg_string);
    al_double = double.tryParse(al_string);
    pc_double = double.tryParse(pc_string);
    pcc_double = double.tryParse(pcc_string);
    bgr_double = double.tryParse(bgr_string);
    bu_double = double.tryParse(bu_string);
    sod_double = double.tryParse(sod_string);
    pot_double = double.tryParse(pot_string);
    hemo_double = double.tryParse(hemo_string);
    wc_double = double.tryParse(wc_string);
    rc_double = double.tryParse(rc_string);
    htn_double = double.tryParse(htn_string);
    dm_double = double.tryParse(dm_string);
    cad_double = double.tryParse(cad_string);
    appet_double = double.tryParse(appet_string);
    pe_double = double.tryParse(pe_string);
    ane_double = double.tryParse(ane_string);
    rbc_double = double.tryParse(rbc_string);
    pcv_double = double.tryParse(pcv_string);
    age_double = double.tryParse(age_string);
  }

  Future<void> predData() async {
    final interpreter = await tfl.Interpreter.fromAsset(
        'assets/kidney_model/final_kidney_model.tflite');
    var input = [
      [    age_double,
        bp_double,
        sg_double,
        al_double,
        su_double,
        rbc_double,
        pc_double,
        pcc_double,
        bgr_double,
        bu_double,
        sc_double,
        sod_double,
        pot_double,
        hemo_double,
        pcv_double,
        wc_double,
        rc_double,
        htn_double,
        dm_double,
        cad_double,
        appet_double,
        pe_double,
        ane_double,
        ba_double]
    ];
    for(int i=0;i<input.length;i++){
      print("${input[i]}  ");
    }


 /*   [
      age_double,
      bp_double,
      sg_double,
      al_double,
      su_double,
      rbc_double,
      pc_double,
      pcc_double,
      bgr_double,
      bu_double,
      sc_double,
      sod_double,
      pot_double,
      hemo_double,
      pcv_double,
      wc_double,
      rc_double,
      htn_double,
      dm_double,
      cad_double,
      appet_double,
      pe_double,
      ane_double,
      sua_double
    ]*/
    var output = List.filled(24, 0).reshape(
        [1, 24]); //    var output = List.filled(1, 0).reshape([1, 12]);
    interpreter.run(input, output);
    print(output[0][0]);
    predValue = output;
    if (output[0][0] == 1.0) {
      predoutputext = 'Chronic';
    } else {
      predoutputext = 'Not-Chronic';
    }
  }
}
